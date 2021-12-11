class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.references :projects, null: false
      t.string :name, null: false
      t.text :description

      t.timestamps
    end

    add_index :tasks, :projects, unique: true
  end
end
