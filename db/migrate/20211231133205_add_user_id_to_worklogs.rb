class AddUserIdToWorklogs < ActiveRecord::Migration[6.1]
  def change
    add_column :worklogs, :user_id, :integer
  end
end
