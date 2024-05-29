// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Parameters {
    //--------AVALANCHE PRICE FEED--------//
    address public constant BTC_PRICE_FEED = 0x31CF013A08c6Ac228C94551d535d5BAfE19c602a;
    address public constant ETH_PRICE_FEED = 0x86d67c3D38D2bCeE722E601025C25a575021c6EA;
    address public constant LINK_PRICE_FEED = 0x34C4c526902d88a3Aa98DB8a9b802603EB1E3470;
    address public constant AVAX_PRICE_FEED = 0x5498BB86BC934c8D34FDA08E81D444153d0D06aD;
    address public constant UNI_PRICE_FEED = 0x7b219F57a8e9C7303204Af681e9fA69d17ef626f;
    address public constant USDC_PRICE_FEED = 0x7898AcCC83587C3C55116c5230C17a6Cd9C71bad;
    address public constant USDT_PRICE_FEED = 0x7898AcCC83587C3C55116c5230C17a6Cd9C71bad;


    //-------------ROUTER--------------//
    address public constant AVALANCHE_FUJI_CCIP_ROUTER = 0xF694E193200268f9a4868e4Aa017A0118C9a8177;
    address public constant ETHEREUM_SEPOLIA_CCIP_ROUTER = 0x0BF3dE8c5D3e8A2B34D2BEeB17ABfCeBaf363A59;
    address public constant ARBITRUM_SEPOLIA_CCIP_ROUTER = 0x2a9C5afB0d0e4BAb2BCdaE109EC4b0c4Be15a165;
    address public constant POLYGON_AMOY_CCIP_ROUTER = 0x9C32fCB86BF0f4a1A8921a9Fe46de3198bb884B2;
    address public constant BASE_SEPOLIA_CCIP_ROUTER = 0xD3b06cEbF099CE7DA4AcCf578aaebFDBd6e88a93;
    address public constant OPTIMISM_SEPOLIA_CCIP_ROUTER = 0x114A20A10b43D4115e5aeef7345a1A71d2a60C57;


    //------------CHAIN_SELECTOR------------//
    uint64 public constant AVALANCHE_FUJI_CHAIN_SELECTOR = 14767482510784806043;
    uint64 public constant ETHEREUM_SEPOLIA_CHAIN_SELECTOR = 16015286601757825753;
    uint64 public constant ARBITRUM_SEPOLIA_CHAIN_SELECTOR = 3478487238524512106;
    uint64 public constant POLYGON_AMOY_CHAIN_SELECTOR = 16281711391670634445;
    uint64 public constant BASE_SEPOLIA_CHAIN_SELECTOR = 10344971235874465080;
    uint64 public constant OPTIMISM_SEPOLIA_CHAIN_SELECTOR = 5224473277236331295;


    //------------CHAIN_ID------------//
    uint64 public constant AVALANCHE_FUJI_CHAIN_ID = 43113;
    uint64 public constant ETHEREUM_SEPOLIA_CHAIN_ID = 11155111;
    uint64 public constant ARBITRUM_SEPOLIA_CHAIN_ID = 421614;
    uint64 public constant POLYGON_AMOY_CHAIN_ID = 80002;
    uint64 public constant BASE_SEPOLIA_CHAIN_ID = 84532;
    uint64 public constant OPTIMISM_SEPOLIA_CHAIN_ID = 11155420;


    //---------FUNCTION ROUTER---------//
    address public constant AVALANCHE_FUJI_FUNCTIONS_ROUTER = 0xA9d587a00A31A52Ed70D6026794a8FC5E2F5dCb0;
    bytes32 public constant AVALANCHE_FUJI_DON_ID = 0x66756e2d6176616c616e6368652d66756a692d31000000000000000000000000;


    //---------MAIN_ROUTER_CONTRACT_ON_AVALANCHE_FUJI---------//
    // Need to fix this after deploying the MainRouter contract
    address public constant AVALANCHE_FUJI_MAIN_ROUTER = 0xF7be8E30E35bf739e9e63B5D334D91de34cEFA8D; // v3

    //---------AGGREGATOR PRICE_FEED_ON_AVALANCHE_FUJI------------


    //---------TOKEN_ON_ETHEREUM_SEPOLIA------------
    address public constant ETHEREUM_SEPOLIA_WBTC = 0x4aa3B1639d45Cb98a67790b8509E47bD7aa16D2A;
    address public constant ETHEREUM_SEPOLIA_WETH = 0x9124d3b5DfD072bB2d6cf3e3A59430d2a5D8A55D;
    address public constant ETHEREUM_SEPOLIA_LINK = 0x31A4Ae750C0e8d477Dd39AF3662F93e69021AA50;
    address public constant ETHEREUM_SEPOLIA_AVAX = 0xdd36FB413B4470ab5CE67F975c6A2B192e6F84ba;
    address public constant ETHEREUM_SEPOLIA_UNI = 0x492E85cD024A271C4F19d8B7E9050Ef2bbFeDcCA;
    address public constant ETHEREUM_SEPOLIA_USDC = 0x65Ae0010421814B1303778Bc82a599f63028d899;
    address public constant ETHEREUM_SEPOLIA_USDT = 0xB3718E52781F9Fc1C0b72A2966C2616E6d962a1C;


    //---------TOKEN_ON_ARBITRUM_SEPOLIA------------
    address public constant ARBITRUM_SEPOLIA_WBTC = 0xF6905F1E4ad86f8C3a1Ebfca3E04a9e4d2adDD0D;
    address public constant ARBITRUM_SEPOLIA_WETH = 0x9a24BD7833859d2364EaD5A4aF4b16799693DF12;
    address public constant ARBITRUM_SEPOLIA_LINK = 0x244ec7F5753b2Fc10d0C2bAaB1AB55850E73a3AB;
    address public constant ARBITRUM_SEPOLIA_AVAX = 0xe257e2a67407144C918acaD5e11c2582F77c0B1a;
    address public constant ARBITRUM_SEPOLIA_UNI = 0x32B8F75d2AC926a0a906F24df3e8Fe2bA17Bd80a;
    address public constant ARBITRUM_SEPOLIA_USDC = 0xDFf5Ba9FCff83cE455e45De7572B6259b0E7D7dE;
    address public constant ARBITRUM_SEPOLIA_USDT = 0x75b86D7B224Fd88f785BB5FaC5e261D9EFde3047;

    //---------TOKEN_ON_AVALANCHE_FUJI------------
    address public constant AVALANCHE_FUJI_WBTC = 0x0804BfEC3ef24bc6CA0eb399D108CC0313d86d9c;
    address public constant AVALANCHE_FUJI_WETH = 0x51353BFb9fB8baE6d70b896401937C64E96BAcB9;
    address public constant AVALANCHE_FUJI_LINK = 0x3001d62eBc86ab3A4eF91aFed766BB70182e251c;
    address public constant AVALANCHE_FUJI_AVAX = 0xD28f8454873CEb4de41d537257044510c3A1d616;
    address public constant AVALANCHE_FUJI_UNI = 0x6cC55345982d82e3E6dC704a64cdbD58a6421b7A;
    address public constant AVALANCHE_FUJI_USDC = 0x620476fe1Bc36a37530b416B7d658024D5966b08;
    address public constant AVALANCHE_FUJI_USDT = 0xAcA1eA8547E247a3125Da273b16C17Badc4f0812;

    //---------TOKEN_ON_POLYGON_AMOY------------
    address public constant POLYGON_AMOY_WBTC = 0xF6905F1E4ad86f8C3a1Ebfca3E04a9e4d2adDD0D;
    address public constant POLYGON_AMOY_WETH = 0x9a24BD7833859d2364EaD5A4aF4b16799693DF12;
    address public constant POLYGON_AMOY_LINK = 0x244ec7F5753b2Fc10d0C2bAaB1AB55850E73a3AB;
    address public constant POLYGON_AMOY_AVAX = 0xe257e2a67407144C918acaD5e11c2582F77c0B1a;
    address public constant POLYGON_AMOY_UNI = 0x32B8F75d2AC926a0a906F24df3e8Fe2bA17Bd80a;
    address public constant POLYGON_AMOY_USDC = 0xDFf5Ba9FCff83cE455e45De7572B6259b0E7D7dE;
    address public constant POLYGON_AMOY_USDT = 0x75b86D7B224Fd88f785BB5FaC5e261D9EFde3047;

    //---------TOKEN_ON_BASE_SEPOLIA------------
    address public constant BASE_SEPOLIA_WBTC = 0xF6905F1E4ad86f8C3a1Ebfca3E04a9e4d2adDD0D;
    address public constant BASE_SEPOLIA_WETH = 0x9a24BD7833859d2364EaD5A4aF4b16799693DF12;
    address public constant BASE_SEPOLIA_LINK = 0x244ec7F5753b2Fc10d0C2bAaB1AB55850E73a3AB;
    address public constant BASE_SEPOLIA_AVAX = 0xe257e2a67407144C918acaD5e11c2582F77c0B1a;
    address public constant BASE_SEPOLIA_UNI = 0x32B8F75d2AC926a0a906F24df3e8Fe2bA17Bd80a;
    address public constant BASE_SEPOLIA_USDC = 0xDFf5Ba9FCff83cE455e45De7572B6259b0E7D7dE;
    address public constant BASE_SEPOLIA_USDT = 0x75b86D7B224Fd88f785BB5FaC5e261D9EFde3047;

    //---------TOKEN_ON_OPTIMISM_SEPOLIA------------
    address public constant OPTIMISM_SEPOLIA_WBTC = 0xF6905F1E4ad86f8C3a1Ebfca3E04a9e4d2adDD0D;
    address public constant OPTIMISM_SEPOLIA_WETH = 0x9a24BD7833859d2364EaD5A4aF4b16799693DF12;
    address public constant OPTIMISM_SEPOLIA_LINK = 0x244ec7F5753b2Fc10d0C2bAaB1AB55850E73a3AB;
    address public constant OPTIMISM_SEPOLIA_AVAX = 0xe257e2a67407144C918acaD5e11c2582F77c0B1a;
    address public constant OPTIMISM_SEPOLIA_UNI = 0x32B8F75d2AC926a0a906F24df3e8Fe2bA17Bd80a;
    address public constant OPTIMISM_SEPOLIA_USDC = 0xDFf5Ba9FCff83cE455e45De7572B6259b0E7D7dE;
    address public constant OPTIMISM_SEPOLIA_USDT = 0x75b86D7B224Fd88f785BB5FaC5e261D9EFde3047;

    // ---------DEPOSITOR DEPLOYED CONTRACTS---------//
    address public constant AVALANCHE_FUJI_DEPOSITOR = 0x0F38096F37B067Be83Ae62437e9b9408375669Bb; // v3
    address public constant ETHEREUM_SEPOLIA_DEPOSITOR = 0x8d554e76becf75012c9168fbc7df2Da0CcfA4B4E; // v3
    address public constant ARBITRUM_SEPOLIA_DEPOSITOR = 0x6D9729c62efbAF4Ec65920a8f26ad9bc9533D2f5; // v3
    address public constant POLYGON_AMOY_DEPOSITOR = 0xB2080CE3E7dAA9ED149bb78E6Bb244Ba0f5CAc0A; // v3
    address public constant BASE_SEPOLIA_DEPOSITOR = 0xA2696CD53F0E8c8Fdc2D2fd842C7670ba0662794; // v3
    address public constant OPTIMISM_SEPOLIA_DEPOSITOR = 0xdF7980DAFD8844A0693c46202e0d34C2014773f3; // v3

    // ---------MINTER DEPLOYED CONTRACTS---------//
    address public constant AVALANCHE_FUJI_MINTER = 0x90F7279A2b221B46C3e03377C3E9f8EE0Fd6A277; // v3
    address public constant ETHEREUM_SEPOLIA_MINTER = 0x8dBe4e6E57bcF80b59263158589cfa5f8d0B7838; // v2
    address public constant ARBITRUM_SEPOLIA_MINTER = 0x73744f28ff269C5A4F8f3a825DA5028724C6890e; // v3
    address public constant POLYGON_AMOY_MINTER = 0xb6D37130Dfe32681F9A97d18F7BB475167344BeD; // v3
    address public constant BASE_SEPOLIA_MINTER = 0x4ff263b5e695dC0F6B555C5118c3e426ea4783E1; // v3
    address public constant OPTIMISM_SEPOLIA_MINTER = 0x9022604de68EdfBD041c3EecDDA9E3F28Ac365FA; // v3

    // --------DSC TOKEN---------//
    address public constant AVALANCHE_FUJI_DSC = 0xFB4230A5dff059091fe22A4Be5CB1a4e5468ADeA;
    address public constant POLYGON_AMOY_DSC = 0x9306Da79208982a13C8a73736071FE62fC1A310e;
    address public constant BASE_SEPOLIA_DSC = 0xB0a1491A0E429ce4a74C98b87172Eb0a886CC906;
    address public constant ARBITRUM_SEPOLIA_DSC = 0x3B21674254B6020d360B4ed4517CBe59b10DBAe3;
    address public constant ETHEREUM_SEPOLIA_DSC = 0xDb287C159F397D561FA3B1235e0Afd652860ECdF;
    address public constant OPTIMISM_SEPOLIA_DSC = 0xF975ABb3E230C3a089bA330249C782c1d0F51708;
}
