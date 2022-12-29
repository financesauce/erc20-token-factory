require("@nomicfoundation/hardhat-toolbox");
require('dotenv').config();

const PRIVATE_KEY = process.env.PKEY;
const ETHERSCAN_KEY = process.env.ETHERSCAN;

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.17",
  
    networks: {
    
   	 bsctest: {
   	   url: `https://data-seed-prebsc-1-s1.binance.org:8545`,
 	     accounts: [PRIVATE_KEY],
 		   },
	 },
	 
	 	  etherscan: {
    apiKey: ETHERSCAN_KEY,
  },
  
};
