class CreateEatenFoods < ActiveRecord::Migration[5.0]
  def change
    create_table :eaten_foods do |t|
      t.integer :food_type_id
      t.string :food_type_name
      t.integer :user_id
      t.float :amount
      t.string :metric_used

      t.belongs_to :daily_profile, index: true
      t.timestamps
    end
  end
end
