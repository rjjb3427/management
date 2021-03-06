class BlendBeansController < ApplicationController
  before_action :set_blend_bean, only: [:show, :edit, :update, :destroy]

  # GET /blend_beans
  # GET /blend_beans.json
  def index
    @blend_beans = BlendBean.all
  end

  # GET /blend_beans/1
  # GET /blend_beans/1.json
  def show
  end

  # GET /blend_beans/new
  def new
    @blend_bean = BlendBean.new
    escape_beans = BlendBean.distinct.pluck(:id)
    escape_beans.concat(StraightBean.distinct.pluck(:id))
    
    beans = Bean.where.not(id: escape_beans)

    @bean_and_supplier_list = Array.new
    beans.each do |b|
      @bean_and_supplier_list << ["#{b.name}/#{b.supplier.name}", b.id]
    end
  end

  # GET /blend_beans/1/edit
  def edit
    escape_beans = BlendBean.distinct.pluck(:id)
    escape_beans.concat(StraightBean.distinct.pluck(:id))
    
    beans = Bean.where.not(id: escape_beans)

    @bean_and_supplier_list = Array.new
    beans.each do |b|
      @bean_and_supplier_list << ["#{b.name}/#{b.supplier.name}", b.id]
    end
  end

  # POST /blend_beans
  # POST /blend_beans.json
  def create
    @blend_bean = BlendBean.new(blend_bean_params)

    respond_to do |format|
      if @blend_bean.save
        format.html { redirect_to @blend_bean, notice: 'Blend bean was successfully created.' }
        format.json { render :show, status: :created, location: @blend_bean }
      else
        format.html { render :new }
        format.json { render json: @blend_bean.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blend_beans/1
  # PATCH/PUT /blend_beans/1.json
  def update
    respond_to do |format|
      if @blend_bean.update(blend_bean_params)
        format.html { redirect_to @blend_bean, notice: 'Blend bean was successfully updated.' }
        format.json { render :show, status: :ok, location: @blend_bean }
      else
        format.html { render :edit }
        format.json { render json: @blend_bean.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blend_beans/1
  # DELETE /blend_beans/1.json
  def destroy
    @blend_bean.destroy
    respond_to do |format|
      format.html { redirect_to blend_beans_url, notice: 'Blend bean was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blend_bean
      @blend_bean = BlendBean.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blend_bean_params
      params.require(:blend_bean).permit(:bean_id, :blended_name)
    end
end
