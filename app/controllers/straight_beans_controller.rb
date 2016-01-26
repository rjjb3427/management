class StraightBeansController < ApplicationController
  before_action :set_straight_bean, only: [:show, :edit, :update, :destroy]

  # GET /straight_beans
  # GET /straight_beans.json
  def index
    @straight_beans = StraightBean.all
  end

  # GET /straight_beans/1
  # GET /straight_beans/1.json
  def show
  end

  # GET /straight_beans/new
  def new
    @straight_bean = StraightBean.new
    bbean = BlendBean.select(:id).distinct.flatten
    sbean = StraightBean.select(:id).distinct.flatten
    @beans = Bean.where.not('id = :sbean OR id = :bbean', sbean: sbean, bbean: bbean).select(:id, :name).distinct
  end

  # GET /straight_beans/1/edit
  def edit
  end

  # POST /straight_beans
  # POST /straight_beans.json
  def create
    @straight_bean = StraightBean.new(straight_bean_params)

    respond_to do |format|
      if @straight_bean.save
        format.html { redirect_to @straight_bean, notice: 'Straight bean was successfully created.' }
        format.json { render :show, status: :created, location: @straight_bean }
      else
        format.html { render :new }
        format.json { render json: @straight_bean.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /straight_beans/1
  # PATCH/PUT /straight_beans/1.json
  def update
    respond_to do |format|
      if @straight_bean.update(straight_bean_params)
        format.html { redirect_to @straight_bean, notice: 'Straight bean was successfully updated.' }
        format.json { render :show, status: :ok, location: @straight_bean }
      else
        format.html { render :edit }
        format.json { render json: @straight_bean.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /straight_beans/1
  # DELETE /straight_beans/1.json
  def destroy
    @straight_bean.destroy
    respond_to do |format|
      format.html { redirect_to straight_beans_url, notice: 'Straight bean was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_straight_bean
      @straight_bean = StraightBean.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def straight_bean_params
      params.require(:straight_bean).permit(:bean_id, :loast)
    end
end
