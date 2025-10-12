# frozen_string_literal: true

require 'open3'

RSpec.describe 'main program' do
  it 'Prints the correct output for the hello world brainfuck example' do
    stdout, _stderr, _status = Open3.capture3('ruby', 'lib/main.rb', 'Examples/hello_world.bf')
    expect(stdout).to eq("Hello World!\n")
  end
  
  it 'Prints the correct output for the fibonacci brainfuck example' do
    stdout, _stderr, _status = Open3.capture3('ruby', 'lib/main.rb', 'Examples/fibonacci.bf')
    expect(stdout).to eq("1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89")
  end

  it 'Prints the correct output for the cell_size brainfuck example' do
    stdout, _stderr, _status = Open3.capture3('ruby', 'lib/main.rb', 'Examples/cell_size.bf')
    expect(stdout).to eq("8 bit cells\n")
  end
end
