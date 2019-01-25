# consensys-marketplace

### Final course project for the "ConsenSys Academy" Developers Program 2018-2019.

Please note that I started this project during the first (most recent) Consensys Academy Course, and as such I'm using solidity 0.4.24 (as is specified in the truffle.js file). Hence, you may need to make sure you have 0.4.24 for truffle

### Contract has been deployed on the Rinkeby network: [0xb42d3214eec65d3e6a6257a778823ad093cbd7fd](https://rinkeby.etherscan.io/address/0xb42d3214eec65d3e6a6257a778823ad093cbd7fd#code)

### Steps to run the project 
  - Global dependencies: 
    - **IPFS** (Please install Go if you don't already have it and add it to your path; Also run the following commands):
      - Download [link](https://dist.ipfs.io/#go-ipfs)
      - `ipfs init`
      - `ipfs config Addresses.API /ip4/127.0.0.1/tcp/5001`
      - `ipfs config --json API.HTTPHeaders.Access-Control-Allow-Origin '["*"]'`
      - `ipfs config --json API.HTTPHeaders.Access-Control-Allow-Methods '["PUT", "GET", "POST"]'`
      - `ipfs daemon`
      
    - or you may install ipfs by:
      - Download [link](https://dist.ipfs.io/#go-ipfs)
      - ipfs init
      - copy the ipfs cat link and paste it into your directory
    
    
    - Node.js:
      - Download [link](https://nodejs.org/en/download/)
    - Angular CLI:
      - `npm install -g @angular/cli`
    - Truffle && Ganache:
      - `npm install -g truffle ganache-cli`
    - Metamask (note, it is prefered that you use the brave browser with the metamask extension built in):
      - [link](https://metamask.io/)
  - Local dependencies
    - Navigate into `/final-project-T-Man-Stan-master/` and run `npm install`
    - Navigate into `/final-project-T-Man-Stan-master/ui_og` and run `npm install`
  - Running the project with local test network(ganache-cli)
    - Start ganache-cli with the following command:
      - `ganache-cli --allowUnlimitedContractSize -l 8000000 -i 42 -m "candy maple cake sugar pudding cream honey rich smooth crumble sweet treat"`

    - In the `/final-project-T-Man-Stan-master/` folder run `truffle deploy`
    - In the `/final-project-T-Man-Stan-master/ui_og` folder run `ng serve`
      -Note, you may need to instead type: 'npm run ng serve' if you get an error
      
    - Head out to `http://localhost:4200/` and interact with the application.
  - Running the project with the **Rinkeby** deployed contract:
    - In the `/consensys-marketplace/ui` folder run `ng serve --prod --aot=false`
    - Head out to `http://localhost:4200/` and interact with the application.
  - Running tests and code coverage:
    - See Travis build
    - Start ganache-cli with the following command:
      - `ganache-cli --allowUnlimitedContractSize -l 8000000 -i 42 -m "candy maple cake sugar pudding cream honey rich smooth crumble sweet treat"`
    - In the `/final-project-T-Man-Stan-master/` folder run `truffle Testing`
    - To run coverage:
      - In the `/final-project-T-Man-Stan-master/` folder run `./node_modules/.bin/solidity-coverage`
      - For Windows user you may need to run `testrpc-sc` before that locally.
