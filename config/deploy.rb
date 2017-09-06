lock "3.9.0"

set :application, "dorislin"
set :repo_url, "git@github.com:niclin/dorislin.git"
set :deploy_to, "/home/apps/dorislin"

set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/secrets.yml')
set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', "public/uploads")
