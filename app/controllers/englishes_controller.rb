class EnglishesController < ApplicationController
   before_action :authenticate_user!, except: [:index]

  def index
    @englishes = English.all
  end

  def show
    @english = English.find(params[:id])
    @book_comment = BookComment.new
  end

  def new
    @english = English.new
  end

  def create
    @english = English.new(english_params)
    @english.user_id = current_user.id
  if @english.save
    redirect_to english_path(@english), notice: 'Update succeeded'
  else
    render :new
  end
  end

  def update
    @english = English.find(params[:id])
    if@english.update(english_params)
    redirect_to english_path(@english), notice: 'Update succeeded'
    else
    render :edit
    end
  end


  def edit
    @english = English.find(params[:id])
  if @english.user == current_user
     render :edit
  else
    redirect_to englishes_path, alert: 'invalid access.'
  end
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