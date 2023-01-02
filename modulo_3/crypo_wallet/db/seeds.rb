# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
spinner = TTY::Spinner.new("[:spinner] Cadastrando moedas...")
spinner.auto_spin


coins = [
    {
        description: "Bitcoin",
        acronym: "BTC",
        url_image: "https://imagensemoldes.com.br/wp-content/uploads/2020/09/Logo-Bitcoin-PNG.png"
    }, 
    {
        description: "Ethereum",
        acronym: "ETC",
        url_image: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Ethereum_logo_2014.svg/1257px-Ethereum_logo_2014.svg.png"
    },
    {
        description: "Dash",
        acronym: "DASH",
        url_image: "https://s2.coinmarketcap.com/static/img/coins/200x200/131.png"
    }
]

coins.each do |coin|
    sleep(1)
    Coin.find_or_create_by!(coin)
end

spinner.success("(Moedas criadas com sucesso!...)")