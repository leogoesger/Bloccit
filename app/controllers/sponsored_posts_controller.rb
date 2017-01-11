class SponsoredPostsController < ApplicationController
  def show
  	@sponsoredpost = SponsoredPost.find(params[:id])
  end

  def new
    @topic = Topic.find(params[:topic_id])
  	@sponsoredpost = SponsoredPost.new
  end

  def edit
    @sponsoredpost = SponsoredPost.find(params[:id])
  end

  def create
 # #9
     @sponsoredpost = SponsoredPost.new
     @sponsoredpost.title = params[:post][:title]
     @sponsoredpost.body = params[:post][:body]
     @topic = Topic.find(params[:topic_id])
     @sponsoredpost.topic = @topic
 # #10
     if @sponsoredpost.save
 # #11
       flash[:notice] = "SponsoredPost was saved."
       redirect_to [@topic, @sponsoredpost]
     else
 # #12
       flash.now[:alert] = "There was an error saving the post. Please try again."
       render :new
     end
   end

   def update
     @sponsoredpost = SponsoredPost.find(params[:id])
     @sponsoredpost.title = params[:post][:title]
     @sponsoredpost.body = params[:post][:body]
 
     if @sponsoredpost.save
       flash[:notice] = "SponsoredPost was updated."
       redirect_to [@sponsoredpost.topic, @sponsoredpost]
     else
       flash.now[:alert] = "There was an error saving the post. Please try again."
       render :edit
     end
   end

   def destroy
     @sponsoredpost = SponsoredPost.find(params[:id])
 
 # #8
     if @sponsoredpost.destroy
       flash[:notice] = "\"#{@sponsoredpost.title}\" was deleted successfully."
       redirect_to @post.topic
     else
       flash.now[:alert] = "There was an error deleting the post."
       render :show
     end
   end
end
