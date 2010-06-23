set :application, "evcnz"
set :repository,  "git@github.com:craigambrose/evcnz.git"
set :deploy_to, "/home/ttnz/public_html/#{application}"
set :destination, "livingmodels.tt.craigambrose.com"
set :user, 'ttnz'

set :scm, :git

role :web, destination                          # Your HTTP server, Apache/etc
role :app, destination                          # This may be the same as your `Web` server
role :db,  destination, :primary => true # This is where Rails migrations will run
set :branch, "master" unless exists?(:branch)

namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end

after "deploy:update_code" do
  link_from_shared_to_current('config')
end
after "deploy", "deploy:cleanup"
after "deploy:migrations", "deploy:cleanup"


def link_from_shared_to_current(path, dest_path = path)
  src_path = "#{shared_path}/#{path}"
  dst_path = "#{release_path}/#{dest_path}"
  run "for f in `ls #{src_path}/` ; do ln -nsf #{src_path}/$f #{dst_path}/$f ; done"
end