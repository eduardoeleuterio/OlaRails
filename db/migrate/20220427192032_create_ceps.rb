class CreateCeps < ActiveRecord::Migration
  def change
    create_table :ceps do |t|
      t.references :bairro
      t.string :logradouro, limit: 128
      t.string :cep, limit: 9
      t.timestamps
    end
  end
end
