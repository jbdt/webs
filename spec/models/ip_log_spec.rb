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
  let(:user) { FactoryBot.create(:user) }

  it("has many ip_logs dependent destroy") do
    FactoryBot.create_list(:ip_log, 10, user: user)
    should respond_to(:user)
    expect { user.destroy }.to change { IpLog.count }
  end

end
