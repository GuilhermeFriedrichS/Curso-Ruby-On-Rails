class MiningType < ApplicationRecord
    has_many :coins #Permite ver do MiningType as moedas associadas
end
