class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
    @comments = @article.comments.all
    @comment = @article.comments.new
    @comment.article_id = @article.id
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to article_path(@article)
    else
      render :new
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to article_path(@article)
    else
      render :edit
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.comments.each do |com|
      com.destroy
    end
    @article.taggings.each do |t|
      t.destroy
    end
    @article.destroy
    redirect_to articles_path, warning: 'Article successfuly deleted'
  end

  private
    def article_params
      params.require(:article).permit(:title, :body, :tag_list)
    end
end
