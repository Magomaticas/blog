class Article < ApplicationRecord
  # Relaciones
  belongs_to :user
  has_many :comments, dependent: :destroy # lo nuevo
  has_rich_text :body

  # Validaciones
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
  validates :user, presence: true # lo nuevo
end