class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.references :report
      t.references :question
      t.string :body
      t.integer :position, default: 0
      t.timestamps
    end
  end
end
