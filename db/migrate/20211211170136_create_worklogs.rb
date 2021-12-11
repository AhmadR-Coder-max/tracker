class CreateWorklogs < ActiveRecord::Migration[6.1]
  def change
    create_table :worklogs do |t|
      t.references :tasks, null: false
      t.decimal :minutes_worked
      t.text :description

      t.timestamps
    end
  end
end
