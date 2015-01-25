class MenusController < ApplicationController
  def show
    @menu = Menu.find params[:id]
  end

  def new
    @menu = Menu.new
  end

  def create
    @menu = Menu.create menu_params
    redirect_to root_path
  end

  def edit
    @menu = Menu.find params[:id]
  end

  def update
    @menu = Menu.find params[:id]
    @menu.update_attributes menu_params
    redirect_to root_path
  end

  def destroy
    @menu = Menu.find params[:id]
    @menu.destroy
    redirect_to root_path
  end

private
  def menu_params
    params.require(:menu).permit(
        :name,
        :description,
    )
  end

end
