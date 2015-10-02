class Tweet­sController < ApplicationController
  before_action :set_tweet­, only: [:show, :edit, :update, :destroy]

  # GET /tweet­s
  # GET /tweet­s.json
  def index
    @tweet­s = Tweet­.all
  end

  # GET /tweet­s/1
  # GET /tweet­s/1.json
  def show
  end

  # GET /tweet­s/new
  def new
    @tweet­ = Tweet­.new
  end

  # GET /tweet­s/1/edit
  def edit
  end

  # POST /tweet­s
  # POST /tweet­s.json
  def create
    @tweet­ = Tweet­.new(tweet­_params)

    respond_to do |format|
      if @tweet­.save
        format.html { redirect_to @tweet­, notice: 'Tweet­ was successfully created.' }
        format.json { render :show, status: :created, location: @tweet­ }
      else
        format.html { render :new }
        format.json { render json: @tweet­.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tweet­s/1
  # PATCH/PUT /tweet­s/1.json
  def update
    respond_to do |format|
      if @tweet­.update(tweet­_params)
        format.html { redirect_to @tweet­, notice: 'Tweet­ was successfully updated.' }
        format.json { render :show, status: :ok, location: @tweet­ }
      else
        format.html { render :edit }
        format.json { render json: @tweet­.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tweet­s/1
  # DELETE /tweet­s/1.json
  def destroy
    @tweet­.destroy
    respond_to do |format|
      format.html { redirect_to tweet­s_url, notice: 'Tweet­ was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tweet­
      @tweet­ = Tweet­.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tweet­_params
      params.require(:tweet­).permit(:status, :zombie_id)
    end
end
