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
   cd omnicore-prod
   git clone https://github.com/omnicash/omnicore.git
   
   docker build -t omnicore:prod .
   
   docker run -d --name omnicore-prod -v ~/.omnicore:/root/.bitcoin omnicore:prod
   ```

