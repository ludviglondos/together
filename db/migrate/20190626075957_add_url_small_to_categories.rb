class AddUrlSmallToCategories < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :url_small, :string
  end
end
