class CreateActionSteps < ActiveRecord::Migration
  def change
    create_table :action_steps do |t|
      t.integer :state
      t.time :target_date
      t.integer :user_id
      t.string :resources
      t.string :success_measurements
      t.integer :goal_id

      t.timestamps

    end
  end
end
