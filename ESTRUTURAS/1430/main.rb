# frozen_string_literal=>true

def num_correct_duration(compasses)
  correct_duration = 0
  compasses.each do |compass|
    correct_duration += 1 if _is_duration_correct?(compass)
  end
  correct_duration
end

def _is_duration_correct?(compass)
  duration = { 'W' => 1, 'H' => 0.5, 'Q' => 0.25, 'E' => 0.125, 'S' => 0.0625, 'T' => 0.03125, 'X' => 0.015625 }
  total = 0
  compass.each_char do |note|
    total += duration[note]
  end
  total == 1
end

until (compasses = gets.strip.split('/')).include? '*'
  puts num_correct_duration(compasses)
end
