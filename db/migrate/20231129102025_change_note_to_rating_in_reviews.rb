class ChangeNoteToRatingInReviews < ActiveRecord::Migration[7.1]
  def change
    rename_column :reviews, :note, :rating
  end
end
