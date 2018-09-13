class ApplicationsController < ApplicationController
	before_action :set_application, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!, except: [:new, :create]

  # GET /projects
  # GET /projects.json
  def index
    @applications = Application.all
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
  end

  # GET /projects/new
  def new
    @application = Application.new
  end

  # GET /projects/1/edit
  def edit
  end

  # POST /projects
  # POST /projects.json
  def create
    @application = Application.new(application_params)

      if @application.save(application_params)
        redirect_to new_application_path, notice: ' Votre candidature a bien été envoyée. Votre dossier sera traité bientôt.'
      else
        render :new 
      end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    respond_to do |format|
      if @application.update(application_params)
        format.html {  redirect_to root_path, notice: 'Project was successfully updated.' }
        format.json { render :show, status: :ok, location: @application }
      else
        format.html { render :edit }
        format.json { render json: @application.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @application.destroy
    respond_to do |format|
      format.html { redirect_to applications_url, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_application
      @application = Application.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def application_params
      params.require(:application).permit(:nom, :prenom, :adresse, :codepostal, :ville, :telephone, :email, :message, :cv, :lettre)
    end
end
