class RestaurantsController < ApplicationController
  before_action :move_to_index, only: [:new, :create]

  def index
    
  end

  def new
    @restaurant = Restaurant.new
    @restaurant.build_comment
    @restaurant.menu_images.new
    @restaurant.build_contact_information
    5.times {
      @restaurant.menus.new
    }
    @user = current_user
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to  root_path
    else
      render 'new'
    end
  end

  private

  def move_to_index
    redirect_to root_path unless user_signed_in?
  end

  def restaurant_params
    params.require(:restaurant).permit(
      :name, :opening_hours, :phone_number, :menu_tax_id, :post_code, :address, :url,
      menus_attributes: [:name, :price],
      comment_attributes: [:description, :image_url, :video_url],
      menu_images_attributes: [:url],
      contact_information_attributes: [:name, :email, :phone_number]).merge(user_id: current_user.id)
  end

end
