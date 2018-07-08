class BenefactorsController < ApplicationController
  layout 'support_us'
  
  def new
    @benefactor = Benefactor.new
  end

  def create
    @benefactor = Benefactor.create(benefactor_params)

    if @benefactor.save
      redirect_to manage_benefactors_path
    else
      render :new
    end
  end

  def edit
    @benefactor = Benefactor.find(params[:id])
  end

  def update
    @benefactor = Benefactor.find(params[:id])

    if @benefactor.update(benefactor_params)
      redirect_to manage_benefactors_path
    else
      render :edit
    end
  end

  def index
    @benefactors = Benefactor.all
  end

  def manage_benefactors
    @benefactors = Benefactor.all
  end

  def destroy
    @benefactors = Benefactor.find(params[:id]).destroy
    redirect_to manage_benefactors_path
  end

  private

    def benefactor_params
      params.require(:benefactor).permit(:name, :image_caption)
    end
end
