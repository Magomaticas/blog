class UsersController < ApplicationController
    before_action :authenticate_user!
    
    def profile
        @user = current_user
        # Aquí puedes agregar lógica adicional para el perfil del usuario si es necesario
    end
end