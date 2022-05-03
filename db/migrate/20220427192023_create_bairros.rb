class CreateBairros < ActiveRecord::Migration
  def change
    create_table :bairros do |t|
      t.references :cidade
      t.string :nome, limit: 32
      t.timestamps
    end
  end
end
