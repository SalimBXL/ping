rm -rf /home/pet/ping/ping/Gemfile.lock
cd /home/pet/ping/ping/
sudo chmod -R 777 /home/pet/ping/ping/
echo " "
echo "********************"
echo "   GIT OPERATIONS   "
echo "********************"
git reset --hard
git pull
echo "  "
echo "***********************************"
echo "  Modification de 'database.yaml'  "
echo "***********************************"
cp /home/pet/ping/ping/install/ping_clone_material/database.yml /home/pet/ping/ping/config/database.yml
sudo chmod -R 777 /home/pet/ping/ping/
echo "  "
echo "********************"
echo "  Update des GEM's  "
echo "********************"
bundle install
bundle update
echo "  "
echo "**************"
echo "  Migrations  "
echo "**************"
rails db:migrate
