class CreateEpisodes < ActiveRecord::Migration[7.0]
  def change
    create_table :episodes do |t|
      t.string :name
      t.integer :time
      t.date :date
      t.text :description

      t.timestamps
    end
  end
end
