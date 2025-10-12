# frozen_string_literal: true

require 'optparse'
require_relative 'brainfuck'

if __FILE__ == $PROGRAM_NAME

  options = {}
  OptionParser.new do |opts|
    opts.banner = 'Usage: ruby main.rb <brainfuck_file>'
  end.parse!(into: options)

  brainfuck_file = ARGV.first
  Brainfuck.new(brainfuck_file).execute
end
