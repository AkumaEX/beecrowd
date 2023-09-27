# frozen_string_literal:true

def get_attendance_list(d)
  attendance_list = []
  d.times do
    attendance_list.push(gets.split.map(&:to_i))
  end
  attendance_list
end

def no_absence?(attendance_list)
  attendance_list.transpose.each do |attendances|
    next if attendances.include? 0

    return true
  end
  false
end

n, d = gets.split.map(&:to_i)
while n.nonzero? || d.nonzero?
  attendance_list = get_attendance_list(d)
  if no_absence?(attendance_list)
    puts 'yes'
  else
    puts 'no'
  end
  n, d = gets.split.map(&:to_i)
end
