class CusinesController < ApplicationController
  before_action :set_cusine, only: [:show, :edit, :update, :destroy]

  # GET /cusines
  # GET /cusines.json
  def index
    @cusines = Cusine.all
  end

  # GET /cusines/1
  # GET /cusines/1.json
  def show
    #Cusine.find(params[:name])
    Cusine.find(params[:id])
  end

  # GET /cusines/new
  def new
    @cusine = Cusine.new
  end

  # GET /cusines/1/edit
  def edit
  end

  # POST /cusines
  # POST /cusines.json
  def create
    @cusine = Cusine.new(cusine_params)

    respond_to do |format|
      if @cusine.save
        format.html { redirect_to @cusine, notice: 'Cusine was successfully created.' }
        format.json { render :show, status: :created, location: @cusine }
      else
        format.html { render :new }
        format.json { render json: @cusine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cusines/1
  # PATCH/PUT /cusines/1.json
  def update
    respond_to do |format|
      if @cusine.update(cusine_params)
        format.html { redirect_to @cusine, notice: 'Cusine was successfully updated.' }
        format.json { render :show, status: :ok, location: @cusine }
      else
        format.html { render :edit }
        format.json { render json: @cusine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cusines/1
  # DELETE /cusines/1.json
  def destroy
    @cusine.destroy
    respond_to do |format|
      format.html { redirect_to cusines_url, notice: 'Cusine was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cusine
      @cusine = Cusine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cusine_params
      params.require(:cusine).permit(:reference, :name)
    end
end
