class CommentsController < ApplicationController
before_action :authenticate_user!
before_action :set_article
    def create
        @comment = @article.comments.build(comment_params)
        @comment.user = current_user

        if @comment.save
            redirect_to article_path(@article), notice: "¡Comentario agregado exitosamente!"
        else
            redirect_to article_path(@article), alert: "Error al agregar el comentario. Verifica los datos ingresados."
        end
    end


    private
        def set_article
            @article = Article.find(params[:article_id])
        end

        def comment_params
            params.require(:comment).permit(:body)
        end
    end
