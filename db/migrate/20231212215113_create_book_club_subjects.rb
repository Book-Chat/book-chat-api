class CreateBookClubSubjects < ActiveRecord::Migration[7.0]
  def change
    create_table :book_club_subjects do |t|
      t.references :subject, null: false, foreign_key: true
      t.references :book_club, null: false, foreign_key: true

      t.timestamps
    end
  end
end
