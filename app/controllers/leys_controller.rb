class LeysController < ApplicationController
  before_action :set_ley, only: [:show, :edit, :update, :destroy]

  # GET /leys
  # GET /leys.json
  def index
    @leys = Ley.all
  end

  # GET /leys/1
  # GET /leys/1.json
  def show
    @ley = Ley.find(params[:id])
  end

  # GET /leys/new
  def new
    @ley = Ley.new
  end

  # GET /leys/1/edit
  def edit
  end

  # POST /leys
  # POST /leys.json
  def create
    @ley = Ley.new(ley_params)

    respond_to do |format|
      if @ley.save
        format.html { redirect_to @ley, notice: 'Ley was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ley }
      else
        format.html { render action: 'new' }
        format.json { render json: @ley.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /leys/1
  # PATCH/PUT /leys/1.json
  def update
    respond_to do |format|
      if @ley.update(ley_params)
        format.html { redirect_to @ley, notice: 'Ley was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ley.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leys/1
  # DELETE /leys/1.json
  def destroy
    @ley.destroy
    respond_to do |format|
      format.html { redirect_to leys_url }
      format.json { head :no_content }
    end
  end

  def search
    @leys = Ley.search do
      keywords(params[:query])
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ley
      @ley = Ley.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ley_params
      params.require(:ley).permit(:numero, :fecha, :titulo, :texto, :legislatura)
    end
end
