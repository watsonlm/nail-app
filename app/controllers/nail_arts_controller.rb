class NailArtsController < ApplicationController
  before_action :set_nail_art, only: [:show, :edit, :update, :destroy]

  # GET /nail_arts
  # GET /nail_arts.json
  def index
    @nail_arts = NailArt.all.includes(:user)
  end

  # GET /nail_arts/1
  # GET /nail_arts/1.json
  def show
  end

  # GET /nail_arts/new
  def new
    @nail_art = NailArt.new
  end

  # GET /nail_arts/1/edit
  def edit
  end

  # POST /nail_arts
  # POST /nail_arts.json
  def create
    @nail_art = NailArt.new(nail_art_params)

    respond_to do |format|
      if @nail_art.save
        format.html { redirect_to @nail_art, notice: 'Nail art was successfully created.' }
        format.json { render :show, status: :created, location: @nail_art }
      else
        format.html { render :new }
        format.json { render json: @nail_art.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nail_arts/1
  # PATCH/PUT /nail_arts/1.json
  def update
    respond_to do |format|
      if @nail_art.update(nail_art_params)
        format.html { redirect_to @nail_art, notice: 'Nail art was successfully updated.' }
        format.json { render :show, status: :ok, location: @nail_art }
      else
        format.html { render :edit }
        format.json { render json: @nail_art.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nail_arts/1
  # DELETE /nail_arts/1.json
  def destroy
    @nail_art.destroy
    respond_to do |format|
      format.html { redirect_to nail_arts_url, notice: 'Nail art was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nail_art
      @nail_art = NailArt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nail_art_params
      params.fetch(:nail_art, {})
    end
end
