class DropTracks < ActiveRecord::Migration[7.0]
  def change
    drop_table :tracks
  end
end
