class PolicyHedingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_policy_heding, only: [:show, :edit, :update, :destroy]

  # GET /policy_hedings
  # GET /policy_hedings.json
  def index
    @policy_hedings = PolicyHeding.all
  end

  # GET /policy_hedings/1
  # GET /policy_hedings/1.json
  def show
  end

  # GET /policy_hedings/new
  def new
    @policy_heding = PolicyHeding.new
  end

  # GET /policy_hedings/1/edit
  def edit
  end

  # POST /policy_hedings
  # POST /policy_hedings.json
  def create
    @policy_heding = PolicyHeding.new(policy_heding_params)

    respond_to do |format|
      if @policy_heding.save
        format.html { redirect_to @policy_heding, notice: 'Policy heding was successfully created.' }
        format.json { render :show, status: :created, location: @policy_heding }
      else
        format.html { render :new }
        format.json { render json: @policy_heding.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /policy_hedings/1
  # PATCH/PUT /policy_hedings/1.json
  def update
    respond_to do |format|
      if @policy_heding.update(policy_heding_params)
        format.html { redirect_to @policy_heding, notice: 'Policy heding was successfully updated.' }
        format.json { render :show, status: :ok, location: @policy_heding }
      else
        format.html { render :edit }
        format.json { render json: @policy_heding.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /policy_hedings/1
  # DELETE /policy_hedings/1.json
  def destroy
    @policy_heding.destroy
    respond_to do |format|
      format.html { redirect_to policy_hedings_url, notice: 'Policy heding was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_policy_heding
      @policy_heding = PolicyHeding.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def policy_heding_params
      params.require(:policy_heding).permit(:heading, :position)
    end
end
