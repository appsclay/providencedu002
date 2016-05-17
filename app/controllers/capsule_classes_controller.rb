class CapsuleClassesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_capsule_class, only: [:show, :edit, :update, :destroy]

  # GET /capsule_classes
  # GET /capsule_classes.json
  def index
    @capsule_classes = CapsuleClass.all
  end

  # GET /capsule_classes/1
  # GET /capsule_classes/1.json
  def show
  end

  # GET /capsule_classes/new
  def new
    @capsule_class = CapsuleClass.new
  end

  # GET /capsule_classes/1/edit
  def edit
  end

  # POST /capsule_classes
  # POST /capsule_classes.json
  def create
    @capsule_class = CapsuleClass.new(capsule_class_params)

    respond_to do |format|
      if @capsule_class.save
        format.html { redirect_to @capsule_class, notice: 'Capsule class was successfully created.' }
        format.json { render :show, status: :created, location: @capsule_class }
      else
        format.html { render :new }
        format.json { render json: @capsule_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /capsule_classes/1
  # PATCH/PUT /capsule_classes/1.json
  def update
    respond_to do |format|
      if @capsule_class.update(capsule_class_params)
        format.html { redirect_to @capsule_class, notice: 'Capsule class was successfully updated.' }
        format.json { render :show, status: :ok, location: @capsule_class }
      else
        format.html { render :edit }
        format.json { render json: @capsule_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /capsule_classes/1
  # DELETE /capsule_classes/1.json
  def destroy
    @capsule_class.destroy
    respond_to do |format|
      format.html { redirect_to capsule_classes_url, notice: 'Capsule class was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_capsule_class
      @capsule_class = CapsuleClass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def capsule_class_params
      params.require(:capsule_class).permit(:title, :starting_date, :duration, :benifits, :guest_lecturer, :display)
    end
end
