class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :action_step_id
      t.integer :improvement_plan_id

      t.timestamps

    end
  end
end
