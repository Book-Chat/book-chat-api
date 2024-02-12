class ChangeSubTypeDefault < ActiveRecord::Migration[7.0]
  def change
    change_column_default :subjects, :type, from: 0, to: 1
  end
end
