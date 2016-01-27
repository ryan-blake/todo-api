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


 private
 def item_params
  params.require(:item).permit(:name, :id)
 end
end
