class CreatePaises < ActiveRecord::Migration
  def change
    create_table :paises do |t|
      t.string :nome, limit: 32
      t.timestamps
    end
  end
end
