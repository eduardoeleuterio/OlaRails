class Pais < ActiveRecord::Base
  attr_accessible :nome

  has_many :estados

  validates :nome,
    presence: true,
    length: {
      maximum: 32
    }
end