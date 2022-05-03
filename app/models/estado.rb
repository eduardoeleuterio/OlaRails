class Estado < ActiveRecord::Base
  attr_accessible :nome, :sigla, :pais_id

  belongs_to :pais
  has_many :cidades

  has_many :cidades

  validates :nome,
    presence: true,
    length: {
      maximum: 32
    }

  validates :sigla,
    presence: true,
    length: {
      maximum: 2
    },
    uniqueness: true
end