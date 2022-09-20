# dbank

Welcome to your new dbank project and to the internet computer development community. By default, creating a new project adds this README and some template files to your project directory. You can edit these template files to customize your project and to include your own code to speed up the development cycle.

To get started, you might want to explore the project directory structure and the default configuration file. Working with this project in your development environment will not affect any production deployment or identity tokens.

To learn more before you start working with dbank, see the following documentation available online:

- [Quick Start](https://sdk.dfinity.org/docs/quickstart/quickstart-intro.html)
- [SDK Developer Tools](https://sdk.dfinity.org/docs/developers-guide/sdk-guide.html)
- [Motoko Programming Language Guide](https://sdk.dfinity.org/docs/language-guide/motoko.html)
- [Motoko Language Quick Reference](https://sdk.dfinity.org/docs/language-guide/language-manual.html)
- [JavaScript API Reference](https://erxue-5aaaa-aaaab-qaagq-cai.raw.ic0.app)

If you want to start working on your project right away, you might want to try the following commands:

```bash
cd dbank/
dfx help
dfx config --help
```

## Running the project locally

If you want to test your project locally, you can use the following commands:

```bash
# Starts the replica, running in the background
dfx start --background

# Deploys your canisters to the replica and generates your candid interface
dfx deploy
```

Once the job completes, your application will be available at `http://localhost:8000?canisterId={asset_canister_id}`.

Additionally, if you are making frontend changes, you can start a development server with

```bash
npm start
```

Which will start a server at `http://localhost:8080`, proxying API requests to the replica at port 8000.

## Running the project on Internet Computer Blockchain

If you want to deploy or host your website after all the testing is done, you need cycles to keep the canisters running on the Internet Computer blockchain. So you can either buy Icp tokens from <a href="https://www.coinbase.com/price/internet-computer">Coinbase</a> or any other platform or you can go to the <a href="https://anv4y-qiaaa-aaaal-qaqxq-cai.ic0.app/">cycles faucet</a> of the Internet Computer and request free cycles for development purposes and follow the instructions given.

After you have linked and verified your wallet, you need to run the following commands: 
```bash
dfx deploy --network ic
```
from there you can either follow the link available after the deployment or put in the address bar of your browser `https://<canister-id>.ic0.app/`. Replace the `<canister-id>` with your canister id. You can look for canister id by the command: 
```bash
dfx canister --network=ic id lookup
```
Now you can share the link of the website with anyone as anybody can access it.
This project's deployed on blockchain's website link is https://wsxmw-ciaaa-aaaal-qbc7q-cai.ic0.app/.

## Note on frontend environment variables

If you are hosting frontend code somewhere without using DFX, you may need to make one of the following adjustments to ensure your project does not fetch the root key in production:

- set`NODE_ENV` to `production` if you are using Webpack
- use your own preferred method to replace `process.env.NODE_ENV` in the autogenerated declarations
- Write your own `createActor` constructor
