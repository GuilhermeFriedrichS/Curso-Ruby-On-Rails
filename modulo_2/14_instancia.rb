class Pessoa
    def initialize(nome_fornecido = "indigente")
        @nome = nome_fornecido #@ Variáveis de instâncias que deixa outros metodos acessarem variaveis de outros metodos, elas só podem ser acessadas pelo proprio objeto
    end
    
    def imprimir_nome
        @nome
    end

    def falar
        "Olá, pessoal!"
    end
end

p1 = Pessoa.new
puts p1.imprimir_nome

p2 = Pessoa.new("Jackson")
puts p2.imprimir_nome