class AddUsuarioIdToCanais < ActiveRecord::Migration
  def change
    add_column :canais, :usuario_id, :integer
  end
end
