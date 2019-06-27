class AddUrlToActivityPost < ActiveRecord::Migration[5.2]
  def change
    add_column :activity_posts, :url_extra, :string
  end
end
