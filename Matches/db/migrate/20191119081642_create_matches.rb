class CreateMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :matches do |t|
      t.string :season
      t.string :city
      t.string :date
      t.string :team1
      t.string :team2
      t.string :toss_winner
      t.string :toss_decision
      t.string :result
      t.string :dl_applied
      t.string :winner
      t.string :win_by_runs
      t.string :win_by_wickets
      t.string :player_of_match
      t.string :venue
      t.string :umpire1
      t.string :umpire2
      t.string :umpire3

      t.timestamps
    end
  end
end
