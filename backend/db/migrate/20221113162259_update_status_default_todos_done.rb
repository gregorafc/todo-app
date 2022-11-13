class UpdateStatusDefaultTodosDone < ActiveRecord::Migration[7.0]
  def change
    change_column_default :todos, :done, false
  end
end
