class MatcherService
  def self.check(viewing)
  matching_viewing = Viewing.includes(:attendance).find_by(user: viewing.attendance.user, attendances: { user: viewing.user })
    if matching_viewing.present?
      if viewing.user.kind == "investor"
        Meeting.create(event: viewing.attendance.event, agreed_timeslot: nil, matching_status: "Matched", investor: viewing.user, startup: viewing.attendance.user)
      else
        Meeting.create(event: viewing.attendance.event, agreed_timeslot: nil, matching_status: "Matched", investor: viewing.attendance.user, startup: viewing.user)
      end
    end
  end
end
