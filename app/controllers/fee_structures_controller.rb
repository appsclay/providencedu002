class FeeStructuresController < ApplicationController
  before_action :authenticate_user!
  before_action :set_fee_structures
  before_action :set_fee_structure, only: [ :edit, :update, :destroy]

  # GET courses/1/fee_structures
  # def index
  #   @fee_structures = @course.fee_structures
  # end

  # GET courses/1/fee_structures/1
  # def show
  # end

  # GET courses/1/fee_structures/new
  # def new
  #   @fee_structure = @course.fee_structures.build
  # end

  # GET courses/1/fee_structures/1/edit
  def edit
  end

  # POST courses/1/fee_structures
  def create
    

    @fee_structure = @course.fee_structures.create(fee_structure_params)
    redirect_to course_path(@course)

  end

  # PUT courses/1/fee_structures/1
  def update
    if @fee_structure.update_attributes(fee_structure_params)
      redirect_to(course_path(@course), notice: 'Fee structure was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE courses/1/fee_structures/1
  def destroy
    @fee_structure.destroy

    redirect_to course_path(@course)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fee_structures
      @course = Course.find(params[:course_id])
    end

    def set_fee_structure
      @fee_structure = @course.fee_structures.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def fee_structure_params
      params.require(:fee_structure).permit(:major_category, :category, :amount, :timing, :additional_tnc)
    end
end
