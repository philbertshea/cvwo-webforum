class FpostsController < ApplicationController
  before_action :set_fpost, only: %i[ show edit update destroy ]

  # GET /fposts or /fposts.json
  def index
    @fposts = Fpost.all
  end

  # GET /fposts/1 or /fposts/1.json
  def show
  end

  # GET /fposts/new
  def new
    @fpost = Fpost.new
  end

  # GET /fposts/1/edit
  def edit
  end

  # POST /fposts or /fposts.json
  def create
    @fpost = Fpost.new(fpost_params)

    respond_to do |format|
      if @fpost.save
        format.html { redirect_to fpost_url(@fpost), notice: "Fpost was successfully created." }
        format.json { render :show, status: :created, location: @fpost }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fposts/1 or /fposts/1.json
  def update
    respond_to do |format|
      if @fpost.update(fpost_params)
        format.html { redirect_to fpost_url(@fpost), notice: "Fpost was successfully updated." }
        format.json { render :show, status: :ok, location: @fpost }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fposts/1 or /fposts/1.json
  def destroy
    @fpost.destroy!

    respond_to do |format|
      format.html { redirect_to fposts_url, notice: "Fpost was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fpost
      @fpost = Fpost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fpost_params
      params.require(:fpost).permit(:post_title, :post_text, :post_datetime, :post_user_id)
    end
end
