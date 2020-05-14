class SatosController < ApplicationController
  before_action :set_sato, only: [:show, :edit, :update, :destroy]

  # GET /satos
  # GET /satos.json
  def index
    @satos = Sato.all
  end

  # GET /satos/1
  # GET /satos/1.json
  def show
  end

  # GET /satos/new
  def new
    @sato = Sato.new
  end

  # GET /satos/1/edit
  def edit
  end

  # POST /satos
  # POST /satos.json
  def create
    @sato = Sato.new(sato_params)

    respond_to do |format|
      if @sato.save
        format.html { redirect_to @sato, notice: 'Sato was successfully created.' }
        format.json { render :show, status: :created, location: @sato }
      else
        format.html { render :new }
        format.json { render json: @sato.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /satos/1
  # PATCH/PUT /satos/1.json
  def update
    respond_to do |format|
      if @sato.update(sato_params)
        format.html { redirect_to @sato, notice: 'Sato was successfully updated.' }
        format.json { render :show, status: :ok, location: @sato }
      else
        format.html { render :edit }
        format.json { render json: @sato.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /satos/1
  # DELETE /satos/1.json
  def destroy
    @sato.destroy
    respond_to do |format|
      format.html { redirect_to satos_url, notice: 'Sato was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sato
      @sato = Sato.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sato_params
      params.require(:sato).permit(:title, :context)
    end
end
