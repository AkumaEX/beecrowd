# frozen_string_literal:true

def get_messages(n)
  messages = {}
  n.times do
    language = gets.strip
    message = gets.strip
    messages[language] = message
  end
  messages
end

def formatted_print(m, messages)
  m.times do
    name = gets.strip
    language = gets.strip
    puts name
    puts messages[language]
    puts
  end
end

n = gets.to_i
messages = get_messages(n)
m = gets.to_i
formatted_print(m, messages)
