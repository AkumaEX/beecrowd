# frozen_string_literal:true

require 'set'

def get_servers(m)
  servers = []
  m.times do
    q = gets.split[1..].to_set
    servers.push(q)
  end
  servers
end

def get_connections(n, servers)
  connections = 0
  n.times do
    p = gets.split[1..].to_set
    servers.each do |server|
      connections += 1 if p.intersect? server
    end
  end
  connections
end

m, n = gets.split.map(&:to_i)
while m.nonzero? && n.nonzero?
  servers = get_servers(m)
  connections = get_connections(n, servers)
  puts connections
  m, n = gets.split.map(&:to_i)
end
