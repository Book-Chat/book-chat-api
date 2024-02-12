class ChangeSujectTypeColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :subjects, :type, :category
  end
end
