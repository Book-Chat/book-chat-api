class CreateMeetings < ActiveRecord::Migration[7.0]
  def change
    create_table :meetings do |t|
      t.datetime :date_time
      t.string :location
      t.references :book_club, null: false, foreign_key: true

      t.timestamps
    end
  end
end
