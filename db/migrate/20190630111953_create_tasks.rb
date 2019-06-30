# frozen_string_literal: true
class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.integer :priority
      t.datetime :start_time
      t.datetime :end_time
      t.integer :state
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :tasks, :priority
    add_index :tasks, :start_time
    add_index :tasks, :end_time
    add_index :tasks, :state
  end
end
