namespace :heroku do
  task :config do
    puts "Reading config/config.yml and sending config vars to Heroku..."
    CONFIG = YAML.load_file('config/config.yml')['production'] rescue {}
    command = "heroku config:add"
    CONFIG.each { |k,v| command << " #{k}=#{v} " if v }
    system command
  end
end
