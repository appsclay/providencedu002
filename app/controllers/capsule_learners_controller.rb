class CapsuleLearnersController < ApplicationController
  before_action :authenticate_user!, except: [:create]
  before_action :set_capsule_learner, only: [:show, :edit, :update, :destroy]

  # GET /capsule_learners
  # GET /capsule_learners.json
  def index
    @capsule_learners = CapsuleLearner.all
  end

  # GET /capsule_learners/1
  # GET /capsule_learners/1.json
  def show
  end

  # GET /capsule_learners/new
  def new
    @capsule_learner = CapsuleLearner.new
  end

  # GET /capsule_learners/1/edit
  def edit
  end

  # POST /capsule_learners
  # POST /capsule_learners.json
  def create
    @capsule_learner = CapsuleLearner.new(capsule_learner_params)

    respond_to do |format|
      if @capsule_learner.save
        format.html { redirect_to '/free_capsule_classes', notice: 'Capsule learner was successfully created.' }
        
      else
        format.html { render template: 'home/free_capsule_classes' }
        
      end
    end
  end

  # PATCH/PUT /capsule_learners/1
  # PATCH/PUT /capsule_learners/1.json
  def update
    respond_to do |format|
      if @capsule_learner.update(capsule_learner_params)
        format.html { redirect_to @capsule_learner, notice: 'Capsule learner was successfully updated.' }
        format.json { render :show, status: :ok, location: @capsule_learner }
      else
        format.html { render :edit }
        format.json { render json: @capsule_learner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /capsule_learners/1
  # DELETE /capsule_learners/1.json
  def destroy
    @capsule_learner.destroy
    respond_to do |format|
      format.html { redirect_to capsule_learners_url, notice: 'Capsule learner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_capsule_learner
      @capsule_learner = CapsuleLearner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def capsule_learner_params
      params.require(:capsule_learner).permit(:capsule_class_id, :name, :email, :phone_number, :educational_status, :company_name)
    end
end
