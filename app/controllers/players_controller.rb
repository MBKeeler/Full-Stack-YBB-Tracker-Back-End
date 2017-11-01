class PlayersController < ProtectedController
# class PlayersController < ApplicationController
  before_action :set_player, only: [:show, :update, :destroy]

  # GET /players
  def index
    @players = Player.all

    render json: @players
  end

  # GET /players/1
  def show
    render json: Player.find(params[:first_name, :last_name])
  end

  # POST /players
  def create
    @player = current_user.players.build(player_params)

    if @player.save
      render json: @player, status: :created, location: @player
    else
      render json: @player.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /players/1
  def update
    # added current_user line below
    @player = current_user.players.update(player_params)

    if @player.update
      render json: @player
    else
      render json: @player.errors, status: :unprocessable_entity
    end
  end

  # DELETE /players/1
  def destroy
    # added current_user line below
    @player = current_user.players.destroy
    # @player.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player
      @player = Player.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def player_params
      params.require(:player).permit(:first_name, :last_name, :age, :grade, :program, :notes, :catch, :throw, :pitch, :bat, :athleticism)
    end
end
