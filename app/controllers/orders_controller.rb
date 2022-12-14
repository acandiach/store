
class OrdersController < ApplicationController
  before_action :authenticate_user!

  def index
    @orders = Order.all
  end

  def show
    order
  end


  def new
    # @order = current_user.orders.build
    @order = Order.new
  end

  def edit
    order
  end

  def create
    @order = Order.new(order_params)

    if @order.save
      redirect_to orders_path, notice: "order was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if order.update(order_params)
      redirect_to orders_path, notice: "order was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    order.destroy

    redirect_to orders_url, notice: "order was successfully destroyed."
  end

  private
    def order
      @order = Order.find(params[:id])
    end

    def order_params
      params.require(:order).permit(:name)
    end
end
