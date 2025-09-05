class Comment < ApplicationRecord
  # Relaciones
  belongs_to :article
  belongs_to :user

  # Validaciones
  validates :body, presence: true
  validates :user, presence: true
  validates :article, presence: true # lo nuevo
end