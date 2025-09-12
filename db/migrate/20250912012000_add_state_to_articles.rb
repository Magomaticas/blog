# db/migrate/20241212202250_add_state_to_articles.rb
# en la migración agregué `, default: 0, null: false` para no permitir valores nulos y que el `publication_state` sea por defecto: 0 (draft)
class AddStateToArticles < ActiveRecord::Migration[8.0]
  def change
    add_column :articles, :publication_state, :integer, default: 0, null: false
  end
end