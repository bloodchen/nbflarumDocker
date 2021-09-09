# NBFlarum community docker

## Features

1. Create and run multipal forums
2. Support NBdomain login and pay tips
3. Support All flarum addons
4. Support Chinese


## How to install?

0. make sure you have docker installed in your system. https://docs.docker.com/get-docker/
1. run `rundb.sh` to start mysql database and wait for db to start up. Run `docker logs sharedb` to check status
2. run `add.sh` to add a new forum. Required input:
	- Name: The name of the forum, used in docker as container name and local folder name
	- local port: the forum will run on http://127.0.0.1:port . You can use reverseProxy to run multipal forum.
	- Domain: The domain of the forum. The forum is only accsible through this domain.

3. `cd abcd` and run `abcd.sh` to start the forum docker
4. After the forum is running. Restart it to install all default extensions

## add/reload extension

1. edit abcd/extensions/list to add new extension
2. run `docker restart abcd` to reload/update all extensions

## Note

1. The forum need to restart at least once to install all the extensions.
2. more details of the docker file can be found at https://github.com/mondediefr/docker-flarum
