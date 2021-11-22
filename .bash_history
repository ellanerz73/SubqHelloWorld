sudo apt update
curl -s https://raw.githubusercontent.com/razumv/helpers/main/tools/install_node14.sh | bash
curl -s https://raw.githubusercontent.com/razumv/helpers/main/tools/install_docker.sh | bash
npm install -g @subql/cli
cd SubQ
mkdir SubQ
cd SubQ
sudo subql init --starter HelloWorld
cd HelloWorld
npm install
npm run-script codegen
npm install -g npm
npm run-script build
docker-compose up -d
docker-compose logs -f --tail=100
