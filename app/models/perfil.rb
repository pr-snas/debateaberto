class Perfil < ActiveRecord::Base
  attr_accessible :bairro, :cidade, :descricao, :estado, :nome

  belongs_to :usuario
end
