require_relative 'pagamento'

include Pagamento::Master

puts Pagamento::Master::pagamento #neste caso é obrigado a fazer o include