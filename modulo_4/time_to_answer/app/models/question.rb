class Question < ApplicationRecord
  belongs_to :subject
  has_many :aswners
  accepts_nested_attributes_for :aswners
end
