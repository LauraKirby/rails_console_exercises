class AddFavoriteColorsToStudents < ActiveRecord::Migration
  def change
    add_column :students, :fav_color, :string
  end
end
