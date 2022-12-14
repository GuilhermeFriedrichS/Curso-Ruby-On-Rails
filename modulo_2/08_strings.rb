x = 'Jackson'
y = 'Rails'

puts x
puts x.class
puts y
puts y.class

a = "Curso"
b = "Rais"

puts a << b #Modifica o a
puts a + b

x = "curso"
puts x.object_id
x = x + "rails" ## Quando concatena aloca um valor diferente na memoria
puts x
puts x.object_id
##############
q = "curso de "
puts q.object_id
q << "rails" ## Com as duas flechas o valor da variavel muda, então ele não vai alocar um novo espaço na memoria
puts q
puts q.object_id

h = "Jackson #{1+1} Pires #{q}"
puts h