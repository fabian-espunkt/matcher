class AttendancePolicy < ApplicationPolicy

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
