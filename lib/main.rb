# frozen_string_literal: true

require 'optparse'
require_relative 'brainfuck'

if __FILE__ == $PROGRAM_NAME

  options = {}
  OptionParser.new do |opts|
    opts.banner = 'Usage: ruby main.rb <brainfuck_file>'
  end.parse!(into: options)

  brainfuck_file = ARGV.first
  if brainfuck_file.nil?
    puts 'Please specify a brainfuck file'
    exit 1
  elsif !File.exist?(brainfuck_file)
    puts "The file #{brainfuck_file} doesn't exists"
    exit 1
  end

  Brainfuck.new(brainfuck_file).execute
end
