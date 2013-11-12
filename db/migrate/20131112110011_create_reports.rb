class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.references :user
      t.date :week_date
      t.integer :mood
      t.timestamps
    end
  end
end
