class FavoritesController < ApplicationController

  def create
    @english = English.find(params[:english_id])
    favorite = @english.favorites.new(user_id: current_user.id)
    favorite.save
    flash[:success] = "Liked post"
    redirect_to request.referer
  end

  def destroy
    @english = English.find(params[:id])
    favorite = @english.favorites.find_by(user_id: current_user.id)
    favorite.destroy
    redirect_to request.referer
  end
end
