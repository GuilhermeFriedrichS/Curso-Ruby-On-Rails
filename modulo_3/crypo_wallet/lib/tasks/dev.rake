namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?
      show_spinner("Apagando DB..."){ %x(rails db:drop) }
      show_spinner("Criando DB...") { %x(rails db:create) }
      show_spinner("Migrando DB...") { %x(rails db:migrate) }
      
      %x(rails dev:add_mining_types)
      %x(rails dev:add_coins)
    else
      puts "Você não está em ambiente de desenvolvimento!"
    end 
  end

  desc "Cadastra as moedas"
  task add_coins: :environment do
      show_spinner("Cadastrando moedas...") do
      coins = [
          {
              description: "Bitcoin",
              acronym: "BTC",
              url_image: "https://imagensemoldes.com.br/wp-content/uploads/2020/09/Logo-Bitcoin-PNG.png",
              mining_type: MiningType.find_by(acronym: 'PoW') #where retorna uma lista dele lementos 
              #find retorna só um, mas precisa procurar pelo id e não pode usar nomes
              #find_by retorna só um e pode pesquisar usando nomes
              
              
          }, 
          {
              description: "Ethereum",
              acronym: "ETC",
              url_image: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Ethereum_logo_2014.svg/1257px-Ethereum_logo_2014.svg.png",
              mining_type: MiningType.all.sample #Seleciona um tipo de mineração aleatório da tabela
          },
          {
              description: "Dash",
              acronym: "DASH",
              url_image: "https://s2.coinmarketcap.com/static/img/coins/200x200/131.png",
              mining_type: MiningType.all.sample
          }
      ]

      coins.each do |coin| 
          Coin.find_or_create_by!(coin)
      end
    end
  end

  desc "Cadastro dos tipos de mineraçao"
  task add_mining_types: :environment do
    show_spinner("Cadastrando tipos de mineração...") do
      mining_types = [
        {description:"Proof of Work", acronym: "PoW"},
        {description:"Proof of Stake", acronym: "PoS"},
        {description:"Proof of Capacity", acronym: "PoC"}
      ]
      mining_types.each do |mining_type| 
        MiningType.find_or_create_by!(mining_type)
      end
    end
  end

  private

  def show_spinner(msg_start, msg_end = "Concluído!")
    spinner = TTY::Spinner.new("[:spinner] #{msg_start}")
    spinner.auto_spin
    yield #Executa o bloco de código na hora que chamar o metodo
    spinner.success("(#{msg_end})")
  end
end
