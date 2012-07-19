class AddDescricaoToTwitter < ActiveRecord::Migration
  def change
    add_column :twitters, :descricao, :string
  end
end
