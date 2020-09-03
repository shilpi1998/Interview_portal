class CreateInterviewparticipants < ActiveRecord::Migration[6.0]
  def change
    create_table :interviewparticipants do |t|
      t.integer :interview_id, :null=>false
      t.integer :participant_id, :null=>false

      t.timestamps
    end
  end
end
