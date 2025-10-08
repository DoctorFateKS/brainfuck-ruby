require 'optparse'

if __FILE__ == $0
  options = {}

  parser = OptionParser.new do |opts|
    opts.banner = 'Usage: ruby main.rb [brainfuck_file]'
    opts.on('-h', '--help', 'Show this help message') do
      puts opts
      exit
    end
  end

  parser.parse!
  brainfuck_file = ARGV[0]
end