class Bairro < ActiveRecord::Base
  attr_accessible :nome, :cidade_id

  belongs_to :cidade
  has_many :ceps

  validates :nome,
    presence: true,
    length: {
      maximum: 32
    }
end 