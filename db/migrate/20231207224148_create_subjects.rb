class CreateSubjects < ActiveRecord::Migration[7.0]
  def change
    create_table :subjects do |t|
      t.integer :type
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
