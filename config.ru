require 'application'

set :run, false
set :environment, :production

FileUtils.mkdir_p 'log' unless File.exists?('log')
log = File.new("log/sinatra.log", "a")
#STDOUT.reopen(log)
#STDERR.reopen(log)
$stdout.reopen(log)
$stderr.reopen(log) 

run Sinatra::Application
