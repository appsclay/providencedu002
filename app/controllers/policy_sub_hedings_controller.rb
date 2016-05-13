class PolicySubHedingsController < ApplicationController

  before_action :authenticate_user!
  before_action :set_policy_sub_hedings
  before_action :set_policy_sub_heding, only: [:edit, :update, :destroy]

 
  # GET policy_hedings/1/policy_sub_hedings/1/edit
  def edit
  end

  # POST policy_hedings/1/policy_sub_hedings
  def create
    @policy_sub_heding = @policy_heding.policy_sub_hedings.create(policy_sub_heding_params)
    redirect_to policy_heding_path(@policy_heding)
  end

  # PUT policy_hedings/1/policy_sub_hedings/1
  def update
    if @policy_sub_heding.update_attributes(policy_sub_heding_params)
     # redirect_to([@policy_sub_heding.policy_heding, @policy_sub_heding], notice: 'Policy sub heding was successfully updated.')
       redirect_to(policy_heding_path(@policy_heding), notice: 'Policy sub heding was successfully updated.') 
    else
      render action: 'edit'
    end
  end

  # DELETE policy_hedings/1/policy_sub_hedings/1
  def destroy
    @policy_sub_heding.destroy

    redirect_to policy_heding_path(@policy_heding)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_policy_sub_hedings
      @policy_heding = PolicyHeding.find(params[:policy_heding_id])
    end

    def set_policy_sub_heding
      @policy_sub_heding = @policy_heding.policy_sub_hedings.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def policy_sub_heding_params
      params.require(:policy_sub_heding).permit(:sub_heading)
    end
end
