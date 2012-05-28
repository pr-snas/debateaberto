class Mensagem < ActiveRecord::Base
  attr_accessible :content
  belongs_to :usuario
  belongs_to :canal
end
