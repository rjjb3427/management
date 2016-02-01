class BeanBuysController < ApplicationController
  before_action :set_bean_buy, only: [:show, :edit, :update, :destroy]

  # GET /bean_buys
  # GET /bean_buys.json
  def index
    @bean_buys = BeanBuy.all
  end

  # GET /bean_buys/1
  # GET /bean_buys/1.json
  def show
    @arrival_id = params[:arrival_id]
    @person_list = Person.all
  end

  # GET /bean_buys/new
  def new
    @bean_buy = BeanBuy.new
    @arrival_id = params[:arrival_id]
    @person_list = Person.all
  end

  # GET /bean_buys/1/edit
  def edit
    @arrival_id = params[:arrival_id]
    @person_list = Person.all
  end

  # POST /bean_buys
  # POST /bean_buys.json
  def create
    @bean_buy = BeanBuy.new(bean_buy_params)

    respond_to do |format|
      if @bean_buy.save
        format.html { redirect_to @bean_buy, notice: 'Bean buy was successfully created.' }
        format.json { render :show, status: :created, location: @bean_buy }
      else
        format.html { render :new }
        format.json { render json: @bean_buy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bean_buys/1
  # PATCH/PUT /bean_buys/1.json
  def update
    respond_to do |format|
      if @bean_buy.update(bean_buy_params)
        format.html { redirect_to @bean_buy, notice: 'Bean buy was successfully updated.' }
        format.json { render :show, status: :ok, location: @bean_buy }
      else
        format.html { render :edit }
        format.json { render json: @bean_buy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bean_buys/1
  # DELETE /bean_buys/1.json
  def destroy
    @bean_buy.destroy
    respond_to do |format|
      format.html { redirect_to bean_buys_url, notice: 'Bean buy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bean_buy
      @bean_buy = BeanBuy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bean_buy_params
      params.require(:bean_buy).permit(:arrival_id, :cost)
    end
end
