class MatcherService

  def self.check(viewing)
  matching_viewing = Viewing.find_by(attendance: viewing.attendance, user: viewing.attendance.user)
     if matching_viewing.present?
       Match.create(asker: viewing.attendance, receiver: matching_viewing.attendance)
     end
  end
end
