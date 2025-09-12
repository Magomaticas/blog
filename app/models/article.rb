class Article < ApplicationRecord
  # Relaciones
  belongs_to :user
  has_many :comments, dependent: :destroy # lo nuevo
  has_rich_text :body

  # Validaciones
  validates :title, presence: true
  validates :user, presence: true # lo nuevo

  enum :publication_state, draft: 0, published: 1

end