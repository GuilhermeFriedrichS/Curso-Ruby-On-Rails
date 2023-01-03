class Coin < ApplicationRecord
    belongs_to :mining_type #optional: true Faz a associação do id dos mining type
end
