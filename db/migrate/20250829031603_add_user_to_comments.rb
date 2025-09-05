class AddUserToComments < ActiveRecord::Migration[8.0]
  def change
    # Agregar la referencia de usuario a comentarios
    add_reference :comments, :user, null: false, foreign_key: true, default: 1
    
    # Asignar el usuario con id = 1 a todos los comentarios existentes que no tengan usuario
    # Esto es necesario porque estamos agregando una columna NOT NULL
    execute "UPDATE comments SET user_id = 1 WHERE user_id IS NULL"
  end
end