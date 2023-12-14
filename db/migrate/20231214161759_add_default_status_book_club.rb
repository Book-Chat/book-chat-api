class AddDefaultStatusBookClub < ActiveRecord::Migration[7.0]
  def change
    change_column :book_clubs, :status, :integer, :default => 0
  end
end
