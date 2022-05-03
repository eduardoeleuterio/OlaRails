class Cep < ActiveRecord::Base
    attr_accessible :logradouro, :cep, :bairro_id

    belongs_to :bairro

    validates :logradouro,
      presence: true,
      length: {
        maximum: 128
      }
end
