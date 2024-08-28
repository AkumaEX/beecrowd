def is_valid(cpf)
  cpf = cpf.gsub(/[.-]/, "").split("").map(&:to_i)
  b1 = (cpf[0] + cpf[1] * 2 + cpf[2] * 3 + cpf[3] * 4 + cpf[4] * 5 + cpf[5] * 6 + cpf[6] * 7 + cpf[7] * 8 + cpf[8] * 9) % 11 % 10
  b2 = (cpf[0] * 9 + cpf[1] * 8 + cpf[2] * 7 + cpf[3] * 6 + cpf[4] * 5 + cpf[5] * 4 + cpf[6] * 3 + cpf[7] * 2 + cpf[8]) % 11 % 10
  b1 == cpf[9] && b2 == cpf[10]
end

while (cpf = gets)
  puts is_valid(cpf) ? "CPF valido" : "CPF invalido"
end
