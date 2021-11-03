class EnglishesController < ApplicationController
  def index
    @englishes = English.all
  end

  def show
    @english = English.find(params[:id])
  end

  def new
    @english = English.new
  end
  
  def create
    @english = English.new(english_params)
    @english.user_id = current_user.id
    @english.save
    redirect_to english_path(@english)
  end
  
  def update
    @english = English.find(params[:id])
    @english.update(english_params)
    redirect_to english_path(@english)
  end
  

  def edit
    @english = English.find(params[:id])
  end
  
  def destroy
    @english = English.find(params[:id])
    english.destroy
    redirect_to englishes_path
  end
  
  
  private
  def english_params
    params.require(:english).permit(:title, :body, :image)
  end
  
end