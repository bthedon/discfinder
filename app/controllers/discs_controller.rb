class DiscsController < ApplicationController
  before_action :set_disc, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit, :create]

  # GET /discs
  # GET /discs.json
  def index
    @discs = Disc.all
  end

  # GET /discs/1
  # GET /discs/1.json
  def show
  end

  # GET /discs/new
  def new
    @disc = current_user.discs.new
  end

  # GET /discs/1/edit
  def edit
  end

  # POST /discs
  # POST /discs.json
  def create
    @disc = current_user.discs.new(disc_params)

    respond_to do |format|
      if @disc.save
        UserMailer.disc_lost(@disc.id).deliver_later
        format.html { redirect_to @disc, notice: 'Disc was successfully created.' }
        format.json { render :show, status: :created, location: @disc }
      else
        format.html { render :new }
        format.json { render json: @disc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /discs/1
  # PATCH/PUT /discs/1.json
  def update
    respond_to do |format|
      if @disc.update(disc_params)
        UserMailer.disc_found(@disc.id, current_user).deliver_later
        format.html { redirect_to @disc, notice: 'Disc was successfully updated.' }
        format.json { render :show, status: :ok, location: @disc }
      else
        format.html { render :edit }
        format.json { render json: @disc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /discs/1
  # DELETE /discs/1.json
  def destroy
    @disc.destroy
    respond_to do |format|
      format.html { redirect_to discs_url, notice: 'Disc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_disc
      @disc = Disc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def disc_params
      params.require(:disc).permit(:brand, 
                                    :name, 
                                    :color, 
                                    :user_id, 
                                    :course_id, 
                                    :hole_id, 
                                    :day_lost,
                                    :is_found)
    end
end
