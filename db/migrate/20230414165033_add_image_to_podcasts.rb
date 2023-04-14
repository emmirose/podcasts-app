class AddImageToPodcasts < ActiveRecord::Migration[7.0]
  def change
    add_column :podcasts, :image, :string

  end
end
