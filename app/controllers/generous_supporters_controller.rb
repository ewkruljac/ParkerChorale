class GenerousSupportersController < ApplicationController
  layout "generous_supporters"
  
  def new
    @generous_supporter = GenerousSupporter.new
  end

  def create
    @generous_supporter = GenerousSupporter.create(generous_supporter_params)

    if @generous_supporter.save
      redirect_to manage_generous_supporters_path
    else
      render :new
    end
  end

  def index
    @generous_supporters = GenerousSupporter.all
  end

  def manage_generous_supporters
    @generous_supporters = GenerousSupporter.all
  end

  def edit
    @generous_supporter = GenerousSupporter.find(params[:id])
  end

  def update
    @generous_supporter = GenerousSupporter.find(params[:id])

    if @generous_supporter.update(generous_supporter_params)
      redirect_to manage_generous_supporters_path
    else
      render :edit
    end
  end

  def destroy
    @generous_supporter = GenerousSupporter.find(params[:id]).destroy
    redirect_to manage_generous_supporters_path
  end

  private

    def generous_supporter_params
      params.require(:generous_supporter).permit(:name, :website_url, :category)
    end
end
