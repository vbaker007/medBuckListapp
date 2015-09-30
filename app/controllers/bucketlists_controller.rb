class BucketLists
  Controller < ApplicationController
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

  def edit
    @bucketlist = Bucketlist.find(params[:id])
  end

  def destroy
    @bucketlist = Bucketlist.find(params[:id])
    @bucketlist.destroy
    redirect_to bucketlists_path 
  end 

  private

  def bucketlist_params
    params.require(:bucketlist).permit(:title, :user_id)
  end
end

