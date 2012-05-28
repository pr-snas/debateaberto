class CreateCanais < ActiveRecord::Migration
  def change
    create_table :canais do |t|
      t.string :path
      t.string :nome
      t.text :descricao

      t.timestamps
    end
  end
end
