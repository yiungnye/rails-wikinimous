class ArticlesController < ApplicationController
  def list
    @list = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end
end
