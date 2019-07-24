class CreatePlans < ActiveRecord::Migration[5.2]
  def up
    create_table :plans do |t|
      t.text :title
      t.string :description
      t.string :text
      t.datetime :starting_date
      t.string :ending_date
      t.string :datetime
      t.text :comments
      t.integer :rating

      t.timestamps

      t.references :user, index: true, foreign_key: true, null: false
    end
  end

  def down
    drop_table :plans if table_exists? :plans
  end
end
