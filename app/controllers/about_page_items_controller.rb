class AboutPageItemsController < ApplicationController
  def new
    @about_page_item = AboutPageItem.new
  end

  def create
    @about_page_item = AboutPageItem.new(about_page_item_params)

    if @about_page_item.save
      redirect_to about_us_path
    else
      render :new
    end
  end

  def index
    @about_page_items = AboutPageItem.all
  end

  def edit
    @about_page_item = AboutPageItem.find(params[:id])
  end

  def update
    @about_page_item = AboutPageItem.find(params[:id])

    if @about_page_item.update(about_page_item_params)
      redirect_to about_us_path
    else
      render :edit
    end
  end

  def destroy
    @about_page_item = AboutPageItem.find(params[:id]).destroy

    redirect_to about_us_path
  end

  private

    def about_page_item_params
      params.require(:about_page_item).permit(:name, :role, :bio)
    end
end
