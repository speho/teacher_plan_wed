class CreateImprovementPlans < ActiveRecord::Migration
  def change
    create_table :improvement_plans do |t|
      t.string :summary
      t.integer :user_id

      t.timestamps

    end
  end
end
