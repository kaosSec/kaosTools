require 'optparse'

system("sudo apt-get install apache2-utils")

options = {}
OptionParser.new do |opts|
  opts.banner = "Usage: search.rb [options]"

  opts.on("-h", "--host HOSTNAME", "Input host") do |hostname|
    options[:hostname] = hostname
  end

  opts.on("-p", "--port HOSTPORT", "Search port") do |port|
    options[:port] = port
  end
end.parse!

while true:
  system("ab -n 1000 -c 10 " + options[:hostname] + ":" + options[:port])
end