class FreeStudyMaterialsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_free_study_materials
  before_action :set_free_study_material, only: [:show, :edit, :update, :destroy]

  # GET capsule_classes/1/free_study_materials
  
  # GET capsule_classes/1/free_study_materials/1/edit
  def edit
  end

  # POST capsule_classes/1/free_study_materials
  def create
    @free_study_material = @capsule_class.free_study_materials.create(free_study_material_params)
    redirect_to capsule_class_path(@capsule_class)

  end

  # PUT capsule_classes/1/free_study_materials/1
  def update
    if @free_study_material.update_attributes(free_study_material_params)
      redirect_to(capsule_class_path(@capsule_class), notice: 'Free study material was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE capsule_classes/1/free_study_materials/1
  def destroy
    @free_study_material.destroy

    redirect_to capsule_class_path(@capsule_class)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_free_study_materials
      @capsule_class = CapsuleClass.find(params[:capsule_class_id])
    end

    def set_free_study_material
      @free_study_material = @capsule_class.free_study_materials.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def free_study_material_params
      params.require(:free_study_material).permit(:title, :pdf)
    end
end
