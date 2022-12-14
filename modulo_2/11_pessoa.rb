class Pessoa
    def initialize(cont = 1)
        cont.times do |i|
            puts "Inicializando... #{i}"
        end
    end

    def falar(texto = "Olá, pessoal!")
        texto
    end

    def falar2(nome = "pessoal")
        "Olá, #{nome}!"
    end

    def falar3(texto = "Olá!", texto2 = "Hello")
        "#{texto} - #{texto2}"
    end
end

p = Pessoa.new
puts p.falar("Olá!")
puts p.falar2("Jackson")
puts p.falar3("Oi!", "Yes!")

p2 = Pessoa.new(3)