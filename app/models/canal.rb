class Canal < ActiveRecord::Base
  belongs_to :usuario
  attr_accessible :descricao, :nome, :path
end
