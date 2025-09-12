class ArticlesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show] # no necesitamos autenticar al usuario para listar y mostrar artículos
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def show
  end

  def new
    @article = current_user.articles.build
  end

  def create
    @article = current_user.articles.build(article_params)
    if @article.save
      redirect_to @article, notice: "¡Artículo creado exitosamente!"
    else
      flash.now[:error] = "Error al crear el artículo. Verifica los datos ingresados."
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @article.update(article_params)
      redirect_to @article, notice: "¡Artículo actualizado exitosamente!"
    else
      flash.now[:error] = "Error al actualizar el artículo. Verifica los datos ingresados."
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    if @article.destroy
      redirect_to articles_path, notice: "¡Artículo eliminado exitosamente!", status: :see_other
    else
      redirect_to articles_path, alert: "No se pudo eliminar el artículo.", status: :see_other
    end
  end

  private

    def set_article
      @article = Article.find(params[:id])
    end

    def article_params
      params.require(:article).permit(:title, :body)
    end
end