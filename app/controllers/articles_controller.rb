class ArticlesController < ApplicationController
  def list
    @list = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.create(article_params)
    redirect_to article_path(@article)
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end
end
