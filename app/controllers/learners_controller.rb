class LearnersController < ApplicationController
  before_action :authenticate_user!, except: [ :create]
  before_action :set_learner, only: [:show, :edit, :update, :destroy]

  # GET /learners
  # GET /learners.json
  def index
    @courses = Course.all
    @capsule_classes = CapsuleClass.all
    @learners = Learner.search(params[:search])
    @capsule_learners = CapsuleLearner.search_l(params[:search1])
  end

  # GET /learners/1
  # GET /learners/1.json
  def show
  end

  # GET /learners/new
  def new
    @learner = Learner.new
  end

  # GET /learners/1/edit
  def edit
  end

  # POST /learners
  # POST /learners.json
  def create
    @learner = Learner.new(learner_params)

    respond_to do |format|
      if @learner.save
        format.html { redirect_to "/all_courses", notice: 'Successfully registered for this Course' }
        
      else
        format.html { render template: "home/all_courses" }
       
      end
    end
  end

  # PATCH/PUT /learners/1
  # PATCH/PUT /learners/1.json
  def update
    respond_to do |format|
      if @learner.update(learner_params)
        format.html { redirect_to @learner, notice: 'Learner was successfully updated.' }
        format.json { render :show, status: :ok, location: @learner }
      else
        format.html { render :edit }
        format.json { render json: @learner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /learners/1
  # DELETE /learners/1.json
  def destroy
    @learner.destroy
    respond_to do |format|
      format.html { redirect_to learners_url, notice: 'Learner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_learner
      @learner = Learner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def learner_params
      params.require(:learner).permit(:name, :email, :phone_number, :course_id, :course_type, :educational_status, :company_name,:search,:search1)
    end
    
end
