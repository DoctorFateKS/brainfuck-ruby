# frozen_string_literal: true

require 'open3'

RSpec.describe 'main program' do
  it 'prints the correct output from a simple brainfuck file' do
    stdout, _stderr, _status = Open3.capture3('ruby', 'lib/main.rb', 'hello_world.bf')
    expect(stdout).to eq('Hello World!')
  end
end
