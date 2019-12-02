class MatchesController < ApplicationController
  before_action :set_match, only: [:show, :update, :destroy]
  before_action :authenticate_user,  only: [:create]
  # GET /matches
  def index
    @matches  = Match.page(params[:page] ? params[:page].to_i : 1)            
    render json: @matches , meta:pagination_meta(@matches)
  end

  def search
    @matches= Match.mysql_search({search_params: {team1: params[:team1]}, has_many: true})
    render json: @matches
  end

  def pagination_meta(object) {
   current_page: object.current_page,
   next_page: object.next_page,
   prev_page: object.prev_page,
   total_pages: object.total_pages,
   total_count: object.total_count }
  end

  # GET /matches/1
  def show
    render json: @match
  end

  # POST /matches
  def create
    @match = Match.new(match_params)

    if @match.save
      render json: @match, status: :created, location: @match
    else
      render json: @match.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /matches/1
  def update
    if @match.update(match_params)
      render json: @match
    else
      render json: @match.errors, status: :unprocessable_entity
    end
  end

  # DELETE /matches/1
  def destroy
    @match.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_match
      @match = Match.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def match_params
      params.require(:match).permit(:id, :season, :city, :date, :team1, :team2, :toss_winner, :toss_decision, :result, :dl_applied, :winner, :win_by_runs, :win_by_wickets, :player_of_match, :venue, :umpire1, :umpire2, :umpire3)
    end
end
