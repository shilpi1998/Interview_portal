class CreateInterviews < ActiveRecord::Migration[6.0]
  def change
    create_table :interviews do |t|
      t.string :title, :null => false
      t.datetime :starttime, :null => false
      t.datetime :endtime, :null => false

      t.timestamps
    end
  end
end
