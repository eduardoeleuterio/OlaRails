class Cidade <ActiveRecord::Base
  attr_accessible :nome, :qtde_habitantes, :estado_id

  belongs_to :estado
  has_many :bairros

  validates :nome,
    presence: true,
    length: {
      maximum: 32
    }

  validates :qtde_habitantes,
    presence: true,
    numericality: {
      greater_than_or_equal_to: 0
    }

 
end