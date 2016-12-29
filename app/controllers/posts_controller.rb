require 'spam'

class PostsController < ApplicationController
  def index
  	@posts = Spam.censor(Post.all)
  end

  def show
  end

  def new
  end

  def edit
  end
end
