class AddSubDefaultType < ActiveRecord::Migration[7.0]
  def change
    change_column :subjects, :type, :integer, default: 0
  end
end
