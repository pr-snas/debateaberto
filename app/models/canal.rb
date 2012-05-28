class Canal < ActiveRecord::Base
  belongs_to :usuario
  attr_accessible :descricao, :nome, :path
  validates :path, presence: true, uniqueness: true,
                   format: { with: /^[a-z\d]+(-[a-z\d]+)*$/i }
  validates :nome, presence: true
  has_one :streamming
end
