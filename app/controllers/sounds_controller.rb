class SoundsController < ApplicationController
  before_action :set_sound, only: %i[ show edit update destroy ]

  # GET /sounds or /sounds.json
  def index
    @sounds = Sound.all
  end

  # GET /sounds/1 or /sounds/1.json
  def show
  end

  # GET /sounds/new
  def new
    @sound = Sound.new
  end

  # GET /sounds/1/edit
  def edit
  end

  # POST /sounds or /sounds.json
  def create
    @sound = Sound.new(sound_params)

    respond_to do |format|
      if @sound.save
        format.html { redirect_to sound_url(@sound), notice: "Sound was successfully created." }
        format.json { render :show, status: :created, location: @sound }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sound.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sounds/1 or /sounds/1.json
  def update
    respond_to do |format|
      if @sound.update(sound_params)
        format.html { redirect_to sound_url(@sound), notice: "Sound was successfully updated." }
        format.json { render :show, status: :ok, location: @sound }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sound.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sounds/1 or /sounds/1.json
  def destroy
    @sound.destroy

    respond_to do |format|
      format.html { redirect_to sounds_url, notice: "Sound was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sound
      @sound = Sound.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sound_params
      params.require(:sound).permit(:name, :description, :file)
    end
end
