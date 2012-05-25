class CreatePerfils < ActiveRecord::Migration
  def change
    create_table :perfils do |t|
      t.references :usuario
      t.string :nome
      t.string :estado
      t.string :cidade
      t.string :bairro
      t.text :descricao

      t.timestamps
    end

    add_index :perfils, :usuario_id
  end
end
