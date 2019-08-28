class Meeting < ApplicationRecord
  belongs_to :investor, class_name: "User", foreign_key: :investor_id
  belongs_to :startup, class_name: "User", foreign_key: :startup_id
  belongs_to :event
end
