# frozen_string_literal:true

from_b = {
  '*.' => { '..' => 1, '*.' => 2, '.*' => 5, '**' => 8 },
  '**' => { '..' => 3, '*.' => 6, '.*' => 4, '**' => 7 },
  '.*' => { '*.' => 9, '**' => 0 }
}

to_b = {
  '1' => { 0 => '*.', 1 => '..', 2 => '..' },
  '2' => { 0 => '*.', 1 => '*.', 2 => '..' },
  '3' => { 0 => '**', 1 => '..', 2 => '..' },
  '4' => { 0 => '**', 1 => '.*', 2 => '..' },
  '5' => { 0 => '*.', 1 => '.*', 2 => '..' },
  '6' => { 0 => '**', 1 => '*.', 2 => '..' },
  '7' => { 0 => '**', 1 => '**', 2 => '..' },
  '8' => { 0 => '*.', 1 => '**', 2 => '..' },
  '9' => { 0 => '.*', 1 => '*.', 2 => '..' },
  '0' => { 0 => '.*', 1 => '**', 2 => '..' }
}

def translate_from_b(from_b, d)
  sentence = []
  3.times { sentence.push(gets.split) }
  (0..d - 1).each do |cell|
    top_cell = sentence[0][cell]
    mid_cell = sentence[1][cell]
    cell < d - 1 ? print(from_b[top_cell][mid_cell]) : puts(from_b[top_cell][mid_cell])
  end
end

def translate_to_b(to_b, d)
  sentence = gets
  [0, 1, 2].each do |line|
    (0..d - 1).each do |digit|
      num = sentence[digit]
      digit < d - 1 ? print("#{to_b[num][line]} ") : puts(to_b[num][line])
    end
  end
end

while (d = gets.to_i) != 0
  gets.chomp == 'B' ? translate_from_b(from_b, d) : translate_to_b(to_b, d)
end
