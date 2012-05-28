class CreateStreammings < ActiveRecord::Migration
  def change
    create_table :streammings do |t|
      t.string :uri
      t.references :canal

      t.timestamps
    end
    add_index :streammings, :canal_id
  end
end
