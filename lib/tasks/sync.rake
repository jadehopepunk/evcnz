desc "Copy the production database into this local development installation"
task :sync do
  app_host = "ttnz@tt.craigambrose.com"
  app_path = "~/public_html/evcnz/current"
  db_config = YAML.load_file('config/database.yml')['development']
  
  system "ssh #{app_host} \"./dump_evcnz.sh\""
  system "rsync -az --progress #{app_host}:~/dump_evcnz.sql ./db/production_data.sql"
  system "mysql -u #{db_config["username"]} #{db_config["database"]} < ./db/production_data.sql"
  rm_rf "./db/production_data.sql"
  system "rsync -az --progress #{app_host}:#{app_path}/public/system/ ./public/system"
end