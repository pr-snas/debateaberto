class Twitter < ActiveRecord::Base
  belongs_to :canal
  attr_accessible :altura, :busca, :titulo, :descricao
end
