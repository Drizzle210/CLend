const { Contract, ethers } = require("ethers");
const MinterABI = require("../../contracts/abi/Minter.json");
const ERC20MockABI = require("../../contracts/abi/ERC20Mock.json");
const NetworkInfomation = require("../src/NetworkInfomation.json");
const {
    getWallet,
    getWalletAddress
} = require("./helper");
const { getTotalMintedValueOnChain } = require("./getMinted");

async function getBurnFeeOnChain(minterContract, amountToBurnInWei) {
    const burnFee = await minterContract.getBurnFee(amountToBurnInWei);
    const burnFeeFormat = ethers.utils.formatUnits(burnFee, "ether");
    console.log(`Burn fee: ${burnFeeFormat}`);
    return burnFeeFormat;
}

async function approveToken(wallet, tokenInfo, amountIn, desChainId) {
    const tokenContract = new Contract(tokenInfo.address, ERC20MockABI, wallet);

    const MINTER_ADDRESS = NetworkInfomation[desChainId].MINTER_ADDRESS;
    const amountInWei = ethers.utils.parseUnits(amountIn.toString(), tokenInfo.decimals);
    const tx = await tokenContract.approve(MINTER_ADDRESS, amountInWei);
    await tx.wait();
    console.log(`Approved with transaction hash: ${tx.hash}`);
}

async function burn(desChainId, amountToBurn, signerFromFE, isCalledFromFrontend) {
    let wallet;
    if (isCalledFromFrontend == true) {
        wallet = signerFromFE;
    } else {
        wallet = getWallet(desChainId);
    }
    const MINTER_ADDRESS = NetworkInfomation[desChainId].MINTER_ADDRESS;
    const minterContract = new Contract(MINTER_ADDRESS, MinterABI, wallet);
    const walletAddress = await wallet.getAddress();
    const totalMintedOnchain = await getTotalMintedValueOnChain(desChainId, walletAddress);
    // console.log(totalMintedOnchain);
    // console.log(amountToBurn);
    if (totalMintedOnchain < amountToBurn) {
        return null;
    }

    const tokenInfo = NetworkInfomation[desChainId]["TOKEN"]["DSC"];
    await approveToken(wallet, tokenInfo, amountToBurn, desChainId);

    const gasLimit = ethers.utils.hexlify(1000000);
    const amountToBurnInWei = ethers.utils.parseUnits(amountToBurn, 18);
    // const value = await getBurnFeeOnChain(minterContract, amountToBurnInWei);
    const value = ethers.utils.parseEther("0.02");
    const tx = await minterContract.burn(amountToBurnInWei, {
        gasLimit: gasLimit,
        value: value
    });
    await tx.wait();
    console.log(`Burned with transaction hash: ${tx.hash}`);
}

async function main() {
    const desChainId = 43113;
    await burn(desChainId, "11", "", false);
}

main();

module.exports = {
    burn,
}