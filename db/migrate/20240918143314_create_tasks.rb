class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :description
      t.datetime :time_limit
      t.string :assigned_by
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
