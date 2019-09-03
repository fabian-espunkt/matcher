class MatcherService
  def self.check(viewing)
    # viewing:
    # - user => current_user
    # - attendance => other guy

    # matching
    # - user => other guy
    # - attendance => current_user
    # Viewing.includes(:attendance).where(user: viewing.attendance.user, attendance: { user: viewing.user })
  # matching_viewing = Viewing.where(user_id: viewing.user.id)
  matching_viewing = Viewing.includes(:attendance).find_by(user: viewing.attendance.user, attendances: { user: viewing.user })
    if matching_viewing.present?
      if viewing.user.kind == "investor"
        Meeting.create(event: viewing.attendance.event, agreed_timeslot: nil, matching_status: "Matched", investor: viewing.user, startup: viewing.attendance.user)
        # Viewing.find_by(user: viewing.user, attendance: viewing.attendance.user, like: true).destroy

      else
        Meeting.create(event: viewing.attendance.event, agreed_timeslot: nil, matching_status: "Matched", investor: viewing.attendance.user, startup: viewing.user)
        # Viewing.find_by(user: viewing.user, attendance: viewing.attendance.user, like: true).destroy

      end
    end
  end
end
