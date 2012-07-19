class CreateTwitters < ActiveRecord::Migration
  def change
    create_table :twitters do |t|
      t.string :titulo
      t.string :busca
      t.string :altura
      t.references :canal

      t.timestamps
    end
    add_index :twitters, :canal_id
  end
end
