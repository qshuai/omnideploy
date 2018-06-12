1. Clone Reposity:

   ```
   git clone https://github.com/qshuai/omnideploy.git
   ```

2. Install docker via Installation script if you have not install docker:

   ```
   ./docker-install.sh
   ```

3. Install this project:

   ```
   cd omnicore-dev
   git clone https://github.com/omnicash/omnicore.git
   
   docker build -t omnicore:dev .
   
   cp install.sh omnicore
   cp run.sh omnicore
   cp bitcoin.conf ~/.omnicore/
   
   docker run -d --name omnicore-dev -v /home/cp/.omnicore:/root/.bitcoin -v $(pwd)/omnicore:/omnicore omnicore:dev /omnicore/install.sh
   docker logs -f omnicore-dev
   // wait finish installation
   docker exec omnicore-dev /omnicore/src/omnicored
   ```

   