class RequirementCategoriesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_requirement_categories
  before_action :set_requirement_category, only: [:show, :edit, :update, :destroy]

 
  # GET positions/1/requirement_categories/1/edit
  def edit
  end

  # POST positions/1/requirement_categories
  def create
    @requirement_category = @position.requirement_categories.create(requirement_category_params)
    redirect_to(position_path(@position), notice: 'Requirement category was successfully created.')    
  end

  # PUT positions/1/requirement_categories/1
  def update
    if @requirement_category.update_attributes(requirement_category_params)
      redirect_to(position_path(@position), notice: 'Requirement category was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE positions/1/requirement_categories/1
  def destroy
    @requirement_category.destroy

    redirect_to position_path(@position)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_requirement_categories
      @position = Position.find(params[:position_id])
    end

    def set_requirement_category
      @requirement_category = @position.requirement_categories.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def requirement_category_params
      params.require(:requirement_category).permit(:rank, :position_id, :requirement_name, :role_and_responsibilities, :what_we_are_looking_for, :hr_email, :hr_number)
    end
end
