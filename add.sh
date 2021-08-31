echo "Enter the forum name(unique,>4 words): "
read name
echo "Enter the forum local port: "
read port
echo "Enter the forum domain: "
read domain
mkdir $name
str="awk '{gsub(\"_NAME_\",\"${name}\")};{gsub(\"_PORT\",\"${port}\")};{gsub(\"_DOMAIN\",\"${domain}\")}'1 template.yml > \"${name}.yml\""
echo 'generating "${name}.yml"'
eval "$str"
echo 'generating "${name}" table and setting permission'
str1="docker exec -it sharedb mysql -uroot -piloveyou -e \"create database \"${name}\"; GRANT ALL PRIVILEGES ON \"${name}\".* TO flarum;\""
eval "$str1"
echo "docker-compose -f \"${name}.yml\" -p NBFLARUM up -d" > "${name}.sh"
chmod +x "${name}.sh"
mv "${name}.sh" $name
mv "${name}.yml" $name
cp -r extensions $name

echo "exec ${name}/\"${name}.sh\" to start forum"