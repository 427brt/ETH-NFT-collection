require("@nomicfoundation/hardhat-toolbox");

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.17",
  networks: {
    goerli: {
      url: "https://eth-goerli.g.alchemy.com/v2/9Rw1lTV7yYTbaDBYuL2RNSbbeirDW1xy",
      accounts: ["f53f4a2741ddf0357677a5f1be368516453f7b8290af3ff004dfd20a38bfd31e"]
    },
  },
};
