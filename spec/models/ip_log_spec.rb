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
require 'rails_helper'

RSpec.describe IpLog, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
