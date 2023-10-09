class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :catches, dependent: :destroy
  has_many :pokemons, through: :catches

  enum role: { trainer: 0, admin: 1 }
end
