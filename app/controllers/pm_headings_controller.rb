class PmHeadingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_pm_heading, only: [:show, :edit, :update, :destroy]

  # GET /pm_headings
  # GET /pm_headings.json
  # def index
  #   @pm_headings = PmHeading.all
  # end

  # GET /pm_headings/1
  # GET /pm_headings/1.json
  def show
  end

  # GET /pm_headings/new
  def new
    @pm_heading = PmHeading.new
  end

  # GET /pm_headings/1/edit
  def edit
  end

  # POST /pm_headings
  # POST /pm_headings.json
  def create
    @pm_heading = PmHeading.new(pm_heading_params)

    respond_to do |format|
      if @pm_heading.save
        format.html { redirect_to pm_logos_path, notice: 'Pm heading was successfully created.' }
        format.json { render :show, status: :created, location: @pm_heading }
      else
        format.html { render :new }
        format.json { render json: @pm_heading.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pm_headings/1
  # PATCH/PUT /pm_headings/1.json
  def update
    respond_to do |format|
      if @pm_heading.update(pm_heading_params)
        format.html { redirect_to pm_logos_path, notice: 'Pm heading was successfully updated.' }
        format.json { render :show, status: :ok, location: @pm_heading }
      else
        format.html { render :edit }
        format.json { render json: @pm_heading.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pm_headings/1
  # DELETE /pm_headings/1.json
  def destroy
    @pm_heading.destroy
    respond_to do |format|
      format.html { redirect_to pm_logos_path, notice: 'Pm heading was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pm_heading
      @pm_heading = PmHeading.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pm_heading_params
      params.require(:pm_heading).permit(:heading)
    end
end
