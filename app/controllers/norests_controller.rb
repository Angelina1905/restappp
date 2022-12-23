class NorestsController < ApplicationController
  http_basic_authenticate_with :name => "admin", :password => "superstrongpassword", :except => [:index, :show]
  before_action :set_norest, only: %i[ show edit update destroy ]
before_action :authenticate_user!, except: [:index, :show]
  # GET /norests or /norests.json
  def index
    @norests = Norest.all
  end

  # GET /norests/1 or /norests/1.json
  def show
    @norest = Norest.find(params[:id])
  end

  # GET /norests/new
  def new
    @norest = Norest.new
  end

  # GET /norests/1/edit
  def edit
  end

  # POST /norests or /norests.json
  def create
    @norest = Norest.new(norest_params.merge(user_id: current_user.id))

    respond_to do |format|
      if @norest.save
        format.html { redirect_to norest_url(@norest), notice: "Norest was successfully created." }
        format.json { render :show, status: :created, location: @norest }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @norest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /norests/1 or /norests/1.json
  def update
    respond_to do |format|
      if @norest.update(norest_params)
        format.html { redirect_to norest_url(@norest), notice: "Norest was successfully updated." }
        format.json { render :show, status: :ok, location: @norest }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @norest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /norests/1 or /norests/1.json
  def destroy
    @norest.destroy

    respond_to do |format|
      format.html { redirect_to norests_url, notice: "Norest was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_norest
      @norest = Norest.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def norest_params
      params.require(:norest).permit(:name, :title, :content, :image,)
    end
end
