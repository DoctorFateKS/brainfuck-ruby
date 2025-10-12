# frozen_string_literal: true

# This class regroups methods to interprets the Brainfuck code in a brainfuck file
class Brainfuck
  def initialize(file_name)
    # Open the brainfuck file, read his content and store it in an instance variable
    @source_code = File.read(file_name)
  end

  def execute
    # Initialize the setup
    cells = [0] * 30_000
    cell_index = 0
    instruction_index = 0

    # Continue while there are instructions left
    while instruction_index < @source_code.size
      instruction = @source_code[instruction_index]

      case instruction
      when '>'
        cell_index += 1
      when '<'
        cell_index -= 1
      when '+'
        cells[cell_index] = clamp0_255_wraparound(cells[cell_index] + 1)
      when '-'
        cells[cell_index] = clamp0_255_wraparound(cells[cell_index] - 1)
      when '.'
        print cells[cell_index].chr
        $stdout.flush
      when ','
        input_char = $stdin.getc
        cells[cell_index] = clamp0_255_wraparound(input_char ? input_char.ord : 0)
      when '['
        instruction_index = find_bracket_match(instruction_index, true) if cells[cell_index].zero?
      when ']'
        instruction_index = find_bracket_match(instruction_index, false) unless cells[cell_index].zero?
      end

      instruction_index += 1
    end
  end

  private

  # Find the location of the corresponding bracket to the one at *start*
  # If forward is true go to the right looking for a matching "]"
  # Otherwise do the reverse
  def find_bracket_match(start, forward)
    in_between_brackets = 0
    direction = forward ? 1 : -1
    location = start + direction
    start_bracket = forward ? '[' : ']'
    end_bracket = forward ? ']' : '['

    while location >= 0 && location < @source_code.length
      char = @source_code[location]
      if char == end_bracket
        return location if in_between_brackets.zero?

        in_between_brackets -= 1
      elsif char == start_bracket
        in_between_brackets += 1
      end

      location += direction
    end

    # Didn't find a match
    puts "Error: could not find match for #{start_bracket} at #{start}."
    start
  end

  # Simulate a 1 byte unsigned integer
  def clamp0_255_wraparound(num)
    if num > 255
      0
    elsif num.negative?
      255
    else
      num
    end
  end
end
