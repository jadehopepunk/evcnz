set :application, "evcnz"
set :repository,  "git@github.com:craigambrose/evcnz.git"

set :scm, :git

role :web, "tt.craigambrose.com"                          # Your HTTP server, Apache/etc
role :app, "tt.craigambrose.com"                          # This may be the same as your `Web` server
role :db,  "tt.craigambrose.com", :primary => true # This is where Rails migrations will run
set :branch, "master" unless exists?(:branch)

# If you are using Passenger mod_rails uncomment this:
# if you're still using the script/reapear helper you will need
# these http://github.com/rails/irs_process_scripts

namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end