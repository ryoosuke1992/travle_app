class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.string :title 
      t.string :date
      t.string :place
      t.string :meeting_place
      t.string :meeting_time
      t.text :content
      t.string :user_id
      t.string :image
      t.timestamps
    end
  end
end
