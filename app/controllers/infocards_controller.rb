class InfocardsController < ApplicationController
  before_action :set_infocard, only: [:show, :update, :destroy]

  # GET /infocards
  def index
    @infocards = Infocard.all

    render json: @infocards
  end

  # GET /infocards/1
  def show
    render json: @infocard
  end

  # POST /infocards
  def create
    @infocard = Infocard.new(infocard_params)

    if @infocard.save
      render json: @infocard, status: :created, location: @infocard
    else
      render json: @infocard.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /infocards/1
  def update
    if @infocard.update(infocard_params)
      render json: @infocard
    else
      render json: @infocard.errors, status: :unprocessable_entity
    end
  end

  # DELETE /infocards/1
  def destroy
    @infocard.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_infocard
      @infocard = Infocard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def infocard_params
      params.require(:infocard).permit(:title, :image_url, :summary, :content, :text)
    end
end
