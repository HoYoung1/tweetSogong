class PicturesController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @pictures = Picture.all.order('created_at desc')
    @pictures_count = current_user.pictures.length
  end
  
  def new
  end
  
  def create
    new_picture= Picture.new(user_id: current_user.id, content: params[:content])
    if new_picture.save
      redirect_to root_path
    else
      redirect_to new_picture_path
    end
  end
  
  def edit
    @picture = Picture.find_by(id: params[:id])
  end
  
  def update
    @picture = Picture.find_by(id: params[:id])
    redirect_to root_path if @picture.user_id != current_user.id 
    
    @picture.content = params[:content]
    
    if @picture.save
      redirect_to root_path
    else
      render :edit
    end
  end
  
  def destroy
    @picture = Picture.find_by(id: params[:id])
    redirect_to root_path if @picture.user_id != current_user.id
    
    @picture.destroy
    redirect_to root_path
  end
  
end
