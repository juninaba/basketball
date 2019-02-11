class DetailsController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @detail = Detail.new
  end

  def create
    Detail.create(detail_params)
    redirect_to controller: 'users', action: 'show', id: current_user.id
  end

  def edit
    @detail = Detail.find(params[:id])
    @user = @detail.user
  end

  def update
    @detail = Detail.find(params[:id])
    @detail.update(detail_params) if @detail.user_id == current_user.id
    redirect_to controller: 'users', action: 'show', id: current_user.id
  end

  private
  def detail_params
    params.require(:detail).permit(:text1, :text2, :text3, :text4).merge(user_id: current_user.id)
  end
end
