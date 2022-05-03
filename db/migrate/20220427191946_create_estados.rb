class CreateEstados < ActiveRecord::Migration
  def change
    create_table :estados do |t|
      t.string :nome, limit: 32
      t.string :sigla, limit: 2
      t.integer :pais_id
      t.timestamps
    end
  end
end
