class Interview < ApplicationRecord
  validates :title, :presence => true
  #validate :end_must_be_after_start
  validate :participant_count
  #validate :time_overlap
  has_many :interviewparticipants
  has_many :participants, :through => :interviewparticipants

  private
   def end_must_be_after_start
     if :starttime >= :endtime
       errors.add(:endtime, "must be after start time")
     end
   end

   def participant_count
       if interviewparticipants.distinct.count('interview_id') > 0
         errors.add(:interviewparticipants, "must contain atleast 2 participants")
       end
     end

end
