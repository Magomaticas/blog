class AddUserToArticles < ActiveRecord::Migration[8.0]
  def change
    # Agregar la referencia de usuario a artículos
    add_reference :articles, :user, null: false, foreign_key: true, default: 1
    
    # Asignar el usuario con id = 1 a todos los artículos existentes que no tengan usuario
    # Esto es necesario porque estamos agregando una columna NOT NULL
    execute "UPDATE articles SET user_id = 1 WHERE user_id IS NULL"
  end
end