class Usuario < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :omniauthable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,
                  :nome

  attr_accessor :nome

  has_one :perfil
  has_many :canais

  validates :papel, inclusion: { in: %w(administrador administrador moderador usuario) }

  before_validation :define_papel_padrao

  def after_initialize
    self.perfil ||= build_perfil
  end

  def before_save
    self.perfil.nome = self.nome
  end

  def self.find_or_create_from_auth_hash(auth_hash)
    if usuario = self.find_by_email(auth_hash.info.email)
      usuario
    else
      usuario = self.create(email: auth_hash.info.email, password: Devise.friendly_token[0, 20]) 
      usuario.perfil = Perfil.create(nome: auth_hash.info.name)
      usuario
    end
  end

  private
  def define_papel_padrao
    self.papel ||= 'usuario'
  end
end
