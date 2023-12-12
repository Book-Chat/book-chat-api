class CreateBookClubUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :book_club_users do |t|
      t.references :user, null: false, foreign_key: true
      t.references :book_club, null: false, foreign_key: true
      t.integer :role

      t.timestamps
    end
  end
end
