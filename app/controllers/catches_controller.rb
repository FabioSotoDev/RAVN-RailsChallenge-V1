class CatchesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_catch, only: %i[show edit update destroy]

  def index
    @catches = Catch.where(user_id: current_user.id).joins(:pokemon)
                    .select('*, catches.created_at AS captured_at, catches.id AS id')
                    .sort_by(&:captured_at).reverse
  end

  # GET /catch/new
  def new
    @catch = Catch.new
    @pokemons = Pokemon.all
  end

  # POST /catch or /catch.json
  def create
    @catch = Catch.new(user_id: current_user.id, pokemon_id: catch_params[:pokemon_id], alias: catch_params[:alias])
    @pokemon = Pokemon.find(catch_params[:pokemon_id])

    respond_to do |format|
      if @catch.save
        CatchNotifierMailer.with(user: @user, pokemon: @pokemon).send_catch.deliver_later # callback
        @user = User.update(current_user.id, last_capture: @catch.created_at)
        format.html { redirect_to catch_url(@catch.id), notice: "Catch was successfully created." }
        format.json { render :show, status: :created, location: @catch.id }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @catch.errors, status: :unprocessable_entity }
      end
    end
  end

  # GET /catches/1/edit
  def edit; end

  # PATCH/PUT /catches/1 or /catches/1.json
  def update
    respond_to do |format|
      if @catch.update(update_params)
        format.html { redirect_to catch_url(@catch.id), notice: "Alias was successfully updated." }
        format.json { render :show, status: :ok, location: @catch.id }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @catch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /catches/1 or /catches/1.json
  def destroy
    @catch.destroy

    respond_to do |format|
      format.html { redirect_to catches_url, notice: "Catch was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  def set_catch
    # byebug
    @catch = Catch.find(params[:id])
  end

  def catch_params
    params.require(:catch).permit(:user_id, :pokemon_id, :alias)
  end

  def update_params
    params.require(:catch).permit(:alias)
  end
end
