v = [[11,12,13], [21,22,23], [31, 32, 33]]

v.each do |externo|
    externo.each do |interno|
        puts interno
    end
end

puts '----------'
s = "Jackson"

puts s[3] #Mostra o K porque a String é uma array também

puts '----------'

v = [1,3,5,6,7,9]

v.each do |elem|
    puts elem
end

# v1 = []
# v1.push(4)
# v1.push('Jack')
# v1.push({teste:4, a:2})
# v1.push(7)

# puts v1[2]

# v1 = []
# v1.push(4)
# v1.push('Jack')

# v1.each do |elem|
#     puts elem
# end