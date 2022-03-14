//https://eth-ropsten.alchemyapi.io/v2/zf7Pt_Vf_fivBU3y9j7pFTLfnO3UAciL

require('@nomiclabs/hardhat-waffle');

module.exports = {
  solidity: '0.8.0',
  networks: {
    ropsten: {
      url: 'https://eth-ropsten.alchemyapi.io/v2/zf7Pt_Vf_fivBU3y9j7pFTLfnO3UAciL',
      accounts: ['dc007b30115d938257e21ff8070734a2c7d29486035a8eb385bb6547384e5fd7']
    }
  }
}