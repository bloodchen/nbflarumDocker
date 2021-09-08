# NBFlarum community docker

## Features

1. Create and run multipal forums
2. Support NBdomain login and pay tips
3. Support All flarum addons
4. Support Chinese


## How to install?

1. run `rundb.sh` to start mysql database and wait for db to start up. Run `docker logs sharedb` to check status
2. run `add.sh` to add a new forum, for example: abcd
3. `cd abcd` and run `abcd.sh` to start the forum docker

## add/reload extension

1. edit abcd/extensions/list to add new extension
2. run `docker restart abcd` to reload/update all extensions