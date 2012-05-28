class Canal < ActiveRecord::Base
  validates :path, presence: true, uniqueness: true,
                   format: { with: /^[a-z\d]+(-[a-z\d]+)*$/i }
  validates :nome, presence: true

  attr_accessible :descricao, :nome, :path

  belongs_to :usuario
  has_one :streamming
  has_many :mensagens
end
