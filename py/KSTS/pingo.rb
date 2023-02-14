require 'optparse'

system("sudo apt-get install apache2-utils")

options = {}
OptionParser.new do |opts|
  opts.banner = "Usage: search.rb [options]"

  opts.on()
  opts.on("-n", "--number NUMBERREQUESTS", "Input requests") do |number|
    options[:requests] = number
  end

  opts.on("-c", "--connections CONNECTIONSAMOUNT", "Input connections") do |connections|
    options[:connections] = connections
  end

  opts.on("-h", "--host HOSTNAME", "Input host") do |hostname|
    options[:hostname] = hostname
  end

  opts.on("-p", "--port HOSTPORT", "Search port") do |port|
    options[:port] = port
  end
end.parse!

while true do
  system("ab " + options[:number] + options[:connections] + options[:hostname] + ":" + options[:port])
end