class MeditationController < ApplicationController

  def index
    @meditations = Meditation.all
  end

  def show
    @meditation = Meditation.find(params[:id])
  end

  def new
    @meditation = Meditation.new
  end

  def create
    @meditation = Meditation.new(meditation_params)

    if @meditation.save
      redirect_to meditations_path
    else render :new
  end

  def edit
    @meditation = Meditation.find(params[:id])  
  end

  def update
    @meditation = Meditation.find(params[:id])
    
    if @meditation.update(meditation_params)
      redirect_to meditations_path
    else render :edit
  end

  def destroy
    @meditation = Meditation.find(params[:id])
    @meditation.destroy
    redirect_to meditations_path
  end

  private

  def meditation_params
    params.require(:meditation).permit(:type, :technique, :group, :name, :bucket_id, :long, :lat, :zipcode)
  end
end
