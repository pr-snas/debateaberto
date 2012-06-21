class Mensagem < ActiveRecord::Base
  attr_accessible :content
  belongs_to :usuario
  belongs_to :canal

  def primeira_do_dia?
    first = Mensagem.where('DATE(created_at) = DATE(?)', self.created_at).first
    return true if first == self
  end
end
