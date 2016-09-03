class ArticlesController < ApplicationController

  def show
    @article = Article.find(params[:id])
  end

  def new
  end

  def create
    # render plain: params[:article].inspect
    @article = Article.new(article_params)
    @article.save
    redircet_to @article
  end

  private
    def article_params
      params.require(:article).permit(:title, :text)
    end

end
