# frozen_string_literal: true
class CreateJoinTableTagsTasks < ActiveRecord::Migration[5.2]
  def change
    create_join_table :tags, :tasks do |t|
      t.references :tag, foreign_key: true
      t.references :task, foreign_key: true
    end
  end
end
