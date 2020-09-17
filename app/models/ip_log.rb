# == Schema Information
#
# Table name: ip_logs
#
#  id          :bigint           not null, primary key
#  change_time :datetime
#  ip          :string(255)
#  user_id     :bigint
#
# Indexes
#
#  fk_rails_78b2a66551  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id) ON DELETE => cascade
#
class IpLog < ApplicationRecord
  belongs_to :user

  validates_presence_of [ :change_time, :ip, :user_id ]

end
