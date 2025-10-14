# frozen_string_literal: true

require_relative '../lib/brainfuck'

RSpec.describe Brainfuck do
  it 'Instanciates correctly the Brainfuck class' do
    brainfuck = Brainfuck.new('Examples/hello_world.bf')
    expect(brainfuck).to be_an_instance_of(Brainfuck)
  end
  it 'Prints the correct output for each brainfuck example' do
    expect { Brainfuck.new('Examples/hello_world.bf').execute }.to output("Hello World!\n").to_stdout
    expect { Brainfuck.new('Examples/fibonacci.bf').execute }.to output("1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89").to_stdout
    expect { Brainfuck.new('Examples/cell_size.bf').execute }.to output("8 bit cells\n").to_stdout
  end
end
