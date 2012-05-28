class CreateMensagens < ActiveRecord::Migration
  def change
    create_table :mensagens do |t|
      t.text :content
      t.references :usuario
      t.references :canal

      t.timestamps
    end
  end
end
