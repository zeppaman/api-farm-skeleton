# Api Farm Skeleton

This is the skeleton project for api farm

# Setup

```
# create a project
COMPOSER_MEMORY_LIMIT=-1 composer create-project zeppaman/api-farm my-project

cd my-project

docker-compose up 

# configure the application
docker-compose exec app ./vendor/bin/apifarm-install apifarm:config [--db-host DB-HOST] [--db-port DB-PORT] [--db-password DB-PASSWORD] [--db-user DB-USER]

# install the database
docker-compose exec app  bin/console apifarm:install [--adminuser ADMINUSER] [--adminpassword ADMINPASSWORD] [--db-host DB-HOST] [--db-port DB-PORT] [--db-password DB-PASSWORD] [--db-user DB-USER]

```




# Command setup


```
# bin/console apifarm:install --help
Usage:
  apifarm:install [options]

Options:
      --adminuser=ADMINUSER          username for initial administator [default: "admin"]
      --adminpassword=ADMINPASSWORD  password for initial administator [default: "admin"]   
  -h, --help                         Display help for the given command. When no command is given display help for the list command
  -q, --quiet                        Do not output any message
  -V, --version                      Display this application version
      --ansi                         Force ANSI output
      --no-ansi                      Disable ANSI output
  -n, --no-interaction               Do not ask any interactive question
  -e, --env=ENV                      The Environment name. [default: "dev"]
      --no-debug                     Switch off debug mode.
  -v|vv|vvv, --verbose               Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
```