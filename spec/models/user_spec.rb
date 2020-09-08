# == Schema Information
#
# Table name: users
#
#  id                  :bigint           not null, primary key
#  current_sign_in_at  :datetime
#  current_sign_in_ip  :string(255)
#  email               :string(255)
#  encrypted_password  :string(255)      default(""), not null
#  last_sign_in_at     :datetime
#  last_sign_in_ip     :string(255)
#  name                :string(255)
#  phone               :string(255)
#  remember_created_at :datetime
#  role                :integer          default("admin")
#  sign_in_count       :integer          default(0), not null
#  surnames            :string(255)
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
# Indexes
#
#  index_users_on_email  (email) UNIQUE
#
require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
