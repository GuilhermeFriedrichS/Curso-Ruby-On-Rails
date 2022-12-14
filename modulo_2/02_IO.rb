puts "Digite seu nome:"
nome = gets
puts "Seu nome é: " + nome

puts "===================="

puts nome.inspect #Mostra o valor exato da variavel, vai mostrar que tem o \n na string que foi o enter que foi digitado
nome = nome.chomp #Remove o \n da string

puts "Nome depois do chomp: "+ nome.inspect   

puts "===================="

puts "Digite seu salário:"
sal = gets.chomp.to_f #Converte pra Float

puts "Seu salário atualizado é: " + (sal * 1.10).to_s #Converte pra String