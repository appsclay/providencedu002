class PrivacyPolicyTopTextsController < ApplicationController
  before_action :set_privacy_policy_top_text, only: [:show, :edit, :update, :destroy]

  # GET /privacy_policy_top_texts
  # GET /privacy_policy_top_texts.json
  # def index
  #   @privacy_policy_top_texts = PrivacyPolicyTopText.all
  # end

  # GET /privacy_policy_top_texts/1
  # GET /privacy_policy_top_texts/1.json
  def show
  end

  # GET /privacy_policy_top_texts/new
  def new
    @privacy_policy_top_text = PrivacyPolicyTopText.new
  end

  # GET /privacy_policy_top_texts/1/edit
  def edit
  end

  # POST /privacy_policy_top_texts
  # POST /privacy_policy_top_texts.json
  def create
    @privacy_policy_top_text = PrivacyPolicyTopText.new(privacy_policy_top_text_params)

    respond_to do |format|
      if @privacy_policy_top_text.save
        format.html { redirect_to policy_hedings_path, notice: 'Privacy policy top text was successfully created.' }
        format.json { render :show, status: :created, location: @privacy_policy_top_text }
      else
        format.html { render :new }
        format.json { render json: @privacy_policy_top_text.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /privacy_policy_top_texts/1
  # PATCH/PUT /privacy_policy_top_texts/1.json
  def update
    respond_to do |format|
      if @privacy_policy_top_text.update(privacy_policy_top_text_params)
        format.html { redirect_to @privacy_policy_top_text, notice: 'Privacy policy top text was successfully updated.' }
        format.json { render :show, status: :ok, location: @privacy_policy_top_text }
      else
        format.html { render :edit }
        format.json { render json: @privacy_policy_top_text.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /privacy_policy_top_texts/1
  # DELETE /privacy_policy_top_texts/1.json
  def destroy
    @privacy_policy_top_text.destroy
    respond_to do |format|
      format.html { redirect_to policy_hedings_path, notice: 'Privacy policy top text was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_privacy_policy_top_text
      @privacy_policy_top_text = PrivacyPolicyTopText.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def privacy_policy_top_text_params
      params.require(:privacy_policy_top_text).permit(:content)
    end
end
