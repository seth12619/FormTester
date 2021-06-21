class SampleItemsController < ApplicationController
  def index
    @sample_items = SampleItem.order(:name)
  end
  
  def new
    @sample_item = SampleItem.new
  end
  
  def show
    @sample_item = SampleItem.find(params[:id])
  end
  
  def create
    @sample_item = SampleItem.new(sample_item_params)
    if @sample_item.save
      redirect_to sample_items_path
    else
      render :new, status: :unprocessable_entity
    end
  end
  
  private
  def sample_item_params
    params.require(:sample_item).permit(:name, :description, :extra_info)
  end
end
