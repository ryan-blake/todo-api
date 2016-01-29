class Api::ItemsController < ApiController
  before_action :authenticated?

  def create
    @item = Item.create!(item_params)
    @list = List.find_by(name: params[:id])
    if @item.save

      render json: @item
    else

      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end


  def update
    @list = List.find_by(id: params[:list_id])
    @item = Item.find_by(params[:id])
    if @item.update(item_params)
      render json: @item
    else
      render json: { errors: @item.errors.full_messages }, status: :unprocessable_entity
    end
  end

 private

 def item_params
   params.require(:item).permit(:name, :id, :completed)
 end
 
end
