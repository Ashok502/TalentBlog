class BlogsController < ApplicationController
  def index
  	@articles = Article.all
  end

  def new
  	@article = Article.new
  end

  def create
  	@article = Article.new(new_params)
  	if @article.save
  		redirect_to blogs_path
  	else
  		render action: :new 
  	end
  end

  def edit
  	@article = Article.find(params[:id])
  end

  def update
  	@article = Article.find(params[:id])
  	if @article.update(new_params)
  		redirect_to blogs_path
  	else
  		render action: :edit 
  	end
  end

  private

  def new_params
  	params.require(:article).permit!
  end
end
