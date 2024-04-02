class PostsController < ApplicationController
  def index
    render json: {message: "Listagem de posts"}
  end

  def show
    render json: {message: "Detalhes do post #{params[:id]}"}
  end

  def new
    render json: {message: "formulario de criação do post"}
  end

  def create
    render json: {message: "criando um novo post"}
  end

  def edit
    render json: {message: "Formulário de ediçao de post #{params[:id]}"}
  end

  def destroy
    render json: { message: "Removendo post #{params[:id]}" }
  end

  def comments
    render json: { message: "Listagem de comentários para o post #{params[:post_id]}" }
  end

  def new_comment
    render json: { message: "Formulário de criação de comentário para o post #{params[:id]}" }
  end

  def create_comment
    render json: { message: "Criando um novo comentário para o post #{params[:id]}" }
  end
end
