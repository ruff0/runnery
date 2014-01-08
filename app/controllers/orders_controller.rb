class OrdersController < ApplicationController
  #before_action :set_order, only: [:show, :edit, :update, :destroy]
  before_action :signed_in_user, only: [:create, :destroy]
  before_action :correct_user,   only: :destroy


  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
  end

  # GET /orders/new
  def new
    @order = Order.new
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = current_user.orders.build(order_params)
    if @order.save
      flash[:success] = "Order Created!"
      redirect_to root_url
    else
      @feed_items = []
      render 'static_pages/home'
    end

    #respond_to do |format|
     # if @order.save
      
      #  format.html { redirect_to @order, notice: 'Order was successfully created.' }
       # format.json { render action: 'show', status: :created, location: @order }
      #else
       # format.html { render action: 'new' }
        #format.json { render json: @order.errors, status: :unprocessable_entity }
      #end
    #end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    redirect_to root_url
   # respond_to do |format|
      #format.html { redirect_to orders_url }
      #format.json { head :no_content }
    #end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    #def set_order
      #@order = Order.find(params[:id])
    #end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:address, :phone, :surcharge, :user_id, :pay_type, :taken, :receipt, :done, :redeemed)
    end

    def correct_user
      @order = current_user.orders.find_by(id: params[:id])
      redirect_to root_url if @order.nil?
    end
end