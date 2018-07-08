class HomePageItemsController < ApplicationController
  layout "home"
  
  def show
    @home_page_item = HomePageItem.first
  end

  def edit
    @home_page_item = HomePageItem.find(params[:id])
  end

  def update
    @home_page_item = HomePageItem.find(params[:id])

    if @home_page_item.update(home_page_item_params)
      redirect_to root_url
    else
      render :edit 
    end
  end

  private
    def home_page_item_params
      params.require(:home_page_item).permit(:summary)
    end
end
