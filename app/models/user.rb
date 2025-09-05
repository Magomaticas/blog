class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Relaciones
  has_many :articles, dependent: :destroy # lo nuevo
  has_many :comments, dependent: :destroy # lo nuevo

  # Validaciones
  validates :email, presence: true, uniqueness: true
end