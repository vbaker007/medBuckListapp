class BucketListController < ApplicationController
  def index
    @bucketlists = Bucketlist.all
  end

  def show
    @bucketlist = Bucketlist.find(params[:id])
  end


  def new
    @bucketlist = Bucketlist.new 
  end

  def create 
    @bucketlist = Bucketlist.new(bucketlist_path)
    
    if @bucketlist 
      redirect_to bucketlists_path 
    else 
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:title, :user_id)
  end
end

