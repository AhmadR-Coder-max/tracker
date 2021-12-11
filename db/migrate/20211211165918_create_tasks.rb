class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.references :project, null: false
      t.string :name, null: false
      t.text :description

      t.timestamps
    end
  end
end
