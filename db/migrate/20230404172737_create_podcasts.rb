class CreatePodcasts < ActiveRecord::Migration[7.0]
  def change
    create_table :podcasts do |t|
      t.string :title
      t.integer :number_of_episodes
      t.integer :average_time
      t.text :description
      t.string :publisher

      t.timestamps
    end
  end
end
