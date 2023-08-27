# frozen_string_literal: true

A, B, C = gets.split.map(&:to_f)
triangle = A * C / 2
circle = 3.14159 * C**2
trapeze = (A + B) * C / 2
square = B**2
rectangle = A * B

puts format('TRIANGULO: %.3f', triangle)
puts format('CIRCULO: %.3f', circle)
puts format('TRAPEZIO: %.3f', trapeze)
puts format('QUADRADO: %.3f', square)
puts format('RETANGULO: %.3f', rectangle)
