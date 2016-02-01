class ArrivalsController < ApplicationController
  before_action :set_arrival, only: [:show, :edit, :update, :destroy]

  # GET /arrivals
  # GET /arrivals.json
  def index
    @arrivals = Arrival.all
  end

  # GET /arrivals/1
  # GET /arrivals/1.json
  def show
  end

  # GET /arrivals/new
  def new
    @arrival = Arrival.new
    beans = Bean.all
    @bean_list = Array.new
    beans.each do |bean|
      @bean_list << ["#{bean[:name]}/#{bean.supplier[:name]}", bean[:id]]
    end
  end

  # GET /arrivals/1/edit
  def edit
    beans = Bean.all
    @bean_list = Array.new
    beans.each do |bean|
      @bean_list << ["#{bean[:name]}/#{bean.supplier[:name]}", bean[:id]]
    end
  end

  # POST /arrivals
  # POST /arrivals.json
  def create
    @arrival = Arrival.new(arrival_params)

    respond_to do |format|
      if @arrival.save
        #format.html { redirect_to @arrival, notice: 'Arrival was successfully created.' }
        #format.json { render :show, status: :created, location: @arrival }
        if @arrival.arrival_type == 'stock' then
          format.html { redirect_to controller: "stocks", action: "new", arrival_id: @arrival.id, notice: 'Arrival was successfully created.' }
          format.json { render :new, status: :created, location: new_stock_path }
        elsif @arrival.arrival_type == 'bean_buy' then
          format.html { redirect_to controller: "bean_buys", action: "new", arrival_id: @arrival.id, notice: 'Arrival was successfully created.' }
          format.json { rendre :new, status: :created, location: new_bean_buy_path }
        else
          format.html { redirect_to @arrival, notice: 'Arrival was successfully created.' }
          format.json { render :show, status: :created, location: @arrival }
        end
      else
        format.html { render :new }
        format.json { render json: @arrival.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /arrivals/1
  # PATCH/PUT /arrivals/1.json
  def update
    respond_to do |format|
      if @arrival.update(arrival_params)
        format.html { redirect_to @arrival, notice: 'Arrival was successfully updated.' }
        format.json { render :show, status: :ok, location: @arrival }
      else
        format.html { render :edit }
        format.json { render json: @arrival.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /arrivals/1
  # DELETE /arrivals/1.json
  def destroy
    @arrival.destroy
    respond_to do |format|
      format.html { redirect_to arrivals_url, notice: 'Arrival was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_arrival
      @arrival = Arrival.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def arrival_params
      params.require(:arrival).permit(:bean_id, :arrival_type, :amount, :arrival_date, :soldout, :soldout_date)
    end
end
