class Question < ApplicationRecord
  belongs_to :subject, inverse_of: :questions
  has_many :answers
  accepts_nested_attributes_for :answers, reject_if: :all_blank, allow_destroy: true
  
  #Kaminari
  paginates_per 5

  # Scopes são metodos que devem ser utilizados quando precisamos fazer pesquisas no banco de dados
  scope :_search_, ->(page, term){ #metodo que pode ser usado sem instanciar a classe
    includes(:answers)
    .where("lower(description) LIKE ?", "%#{term.downcase}%")
    .page(page)
  }

  scope :last_questions, -> (page){
    includes(:answers).order('created_at desc').page(page)
  }
end
