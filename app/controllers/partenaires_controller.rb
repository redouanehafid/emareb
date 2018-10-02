class PartenairesController < ApplicationController
  before_action :set_partenaire, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index]

  # GET /partenaires
  # GET /partenaires.json
  def index
    @partenaires = Partenaire.all
  end

  # GET /partenaires/1
  # GET /partenaires/1.json
 

  # GET /partenaires/new
  def new
    @partenaire = Partenaire.new
    @partenaires = Partenaire.all
  end

  # GET /partenaires/1/edit
  def edit
  end

  # POST /partenaires
  # POST /partenaires.json
  def create
    @partenaire = Partenaire.new(partenaire_params)

    respond_to do |format|
      if @partenaire.save
        format.html { redirect_to new_partenaire_path, notice: 'Partenaire was successfully created.' }
        format.json { render :show, status: :created, location: @partenaire }
      else
        format.html { render :new }
        format.json { render json: @partenaire.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /partenaires/1
  # PATCH/PUT /partenaires/1.json
  def update
    respond_to do |format|
      if @partenaire.update(partenaire_params)
        format.html { redirect_to @partenaire, notice: 'Partenaire was successfully updated.' }
        format.json { render :show, status: :ok, location: @partenaire }
      else
        format.html { render :edit }
        format.json { render json: @partenaire.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /partenaires/1
  # DELETE /partenaires/1.json
  def destroy
    @partenaire.destroy
    respond_to do |format|
      format.html { redirect_to partenaires_url, notice: 'Partenaire was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_partenaire
      @partenaire = Partenaire.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def partenaire_params
      params.require(:partenaire).permit(:Partenaire, :title, :image)
    end
end
