require "./app"
require "sinatra/activerecord/rake"

desc "Run irb console"
task :console, :environment do |t, args|
  ENV['RACK_ENV'] = args[:environment] || 'development'

  exec "irb -r irb/completion -r ./app.rb"
end
