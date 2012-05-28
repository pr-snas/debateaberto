class Mensagem < ActiveRecord::Base
  attr_accessible :content
  belongs_to :usuario
end
