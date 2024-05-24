const { ethers, Contract } = require("ethers")
const NetworkInfomation = require("../src/NetworkInfomation.json");
const MainRouterABI = require("../../contracts/abi/MainRouter.json");
const { getTotalDepositedValueOverallChain } = require("../scripts/getDeposited");
const {
    currentChainID,
    getWallet,
} = require("./helper")

async function getMaxOutput() {
    const totalDeposited = await getTotalDepositedValueOverallChain();
    const totalDepositedFormat = ethers.utils.formatUnits(totalDeposited, "ether")
    const LTV = 0.65;
    const maxOutput = totalDepositedFormat * LTV;
    return maxOutput;
}

async function mint(chainId, amountOut) {
    const avalancheFujiChainId = 43113;
    const wallet = getWallet(avalancheFujiChainId);

    const CHAIN_SELECTOR = NetworkInfomation[chainId].CHAIN_SELECTOR;
    const receiverAddress = NetworkInfomation[chainId].MINTER_ADDRESS;
    const mainRouterAddress = NetworkInfomation[chainId].MAIN_ROUTER_ADDRESS;

    const mainRouterContract = new Contract(mainRouterAddress, MainRouterABI, wallet);
    const amountOutInWei = ethers.utils.formatUnits(amountOut, 18);
    const gasLimit = ethers.utils.hexlify(1000000);
    const value = ethers.utils.parseEther("0.02");

    const maxOutput = await getMaxOutput();
    console.log(`Max Output can be minted: ${maxOutput}`);
    if (maxOutput < amountOut) {
        return null; // forgot subtract minted
    }

    const tx = await mainRouterContract.mint(CHAIN_SELECTOR, receiverAddress, amountOutInWei, {
        gasLimit: gasLimit,
        value: value,
    });
    await tx.wait();
    console.log(tx.hash);
}

module.exports = {
    mint,
}