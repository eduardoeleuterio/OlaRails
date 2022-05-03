class CreateCidades < ActiveRecord::Migration
  def change
    create_table :cidades do |t|
      t.string :nome, limit: 32
      t.integer :qtde_habitantes
      t.timestamps
      t.integer :estado_id
    end
  end
end
