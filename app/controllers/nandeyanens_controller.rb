class NandeyanensController < ApplicationController
  before_action :set_nandeyanen, only: [:show, :edit, :update, :destroy]

  # GET /nandeyanens
  # GET /nandeyanens.json
  def index
    @nandeyanens = Nandeyanen.all
  end

  # GET /nandeyanens/1
  # GET /nandeyanens/1.json
  def show
  end

  # GET /nandeyanens/new
  def new
    @nandeyanen = Nandeyanen.new
  end

  # GET /nandeyanens/1/edit
  def edit
  end

  # POST /nandeyanens
  # POST /nandeyanens.json
  def create
    @nandeyanen = Nandeyanen.new(nandeyanen_params)

    respond_to do |format|
      if @nandeyanen.save
        format.html { redirect_to @nandeyanen, notice: 'Nandeyanen was successfully created.' }
        format.json { render :show, status: :created, location: @nandeyanen }
      else
        format.html { render :new }
        format.json { render json: @nandeyanen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nandeyanens/1
  # PATCH/PUT /nandeyanens/1.json
  def update
    respond_to do |format|
      if @nandeyanen.update(nandeyanen_params)
        format.html { redirect_to @nandeyanen, notice: 'Nandeyanen was successfully updated.' }
        format.json { render :show, status: :ok, location: @nandeyanen }
      else
        format.html { render :edit }
        format.json { render json: @nandeyanen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nandeyanens/1
  # DELETE /nandeyanens/1.json
  def destroy
    @nandeyanen.destroy
    respond_to do |format|
      format.html { redirect_to nandeyanens_url, notice: 'Nandeyanen was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nandeyanen
      @nandeyanen = Nandeyanen.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nandeyanen_params
      params.require(:nandeyanen).permit(:title, :message)
    end
end
