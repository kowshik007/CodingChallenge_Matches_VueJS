require 'test_helper'

class MatchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @match = matches(:one)
  end

  test "should get index" do
    get matches_url, as: :json
    assert_response :success
  end

  test "should create match" do
    assert_difference('Match.count') do
      post matches_url, params: { match: { city: @match.city, date: @match.date, dl_applied: @match.dl_applied, id: @match.id, player_of_match: @match.player_of_match, result: @match.result, season: @match.season, team1: @match.team1, team2: @match.team2, toss_decision: @match.toss_decision, toss_winner: @match.toss_winner, umpire1: @match.umpire1, umpire2: @match.umpire2, umpire3: @match.umpire3, venue: @match.venue, win_by_runs: @match.win_by_runs, win_by_wickets: @match.win_by_wickets, winner: @match.winner } }, as: :json
    end

    assert_response 201
  end

  test "should show match" do
    get match_url(@match), as: :json
    assert_response :success
  end

  test "should update match" do
    patch match_url(@match), params: { match: { city: @match.city, date: @match.date, dl_applied: @match.dl_applied, id: @match.id, player_of_match: @match.player_of_match, result: @match.result, season: @match.season, team1: @match.team1, team2: @match.team2, toss_decision: @match.toss_decision, toss_winner: @match.toss_winner, umpire1: @match.umpire1, umpire2: @match.umpire2, umpire3: @match.umpire3, venue: @match.venue, win_by_runs: @match.win_by_runs, win_by_wickets: @match.win_by_wickets, winner: @match.winner } }, as: :json
    assert_response 200
  end

  test "should destroy match" do
    assert_difference('Match.count', -1) do
      delete match_url(@match), as: :json
    end

    assert_response 204
  end
end
