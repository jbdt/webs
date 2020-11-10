# == Schema Information
#
# Table name: users
#
#  id                   :bigint           not null, primary key
#  current_sign_in_at   :datetime
#  current_sign_in_ip   :string(255)
#  email                :string(255)
#  encrypted_password   :string(255)      default(""), not null
#  fixed_header         :boolean          default(TRUE), not null
#  fixed_sidebar        :boolean          default(TRUE), not null
#  header_color         :string(255)      default("bg-royal header-text-light"), not null
#  last_sign_in_at      :datetime
#  last_sign_in_ip      :string(255)
#  name                 :string(255)
#  phone                :string(255)
#  remember_created_at  :datetime
#  reset_password_token :string(255)
#  role                 :integer          default("admin")
#  sidebar_color        :string(255)      default("bg-royal sidebar-text-light"), not null
#  sign_in_count        :integer          default(0), not null
#  surnames             :string(255)
#  tab_line             :boolean          default(FALSE), not null
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#
# Indexes
#
#  index_users_on_email  (email) UNIQUE
#
require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { FactoryBot.create(:user) }

  it("should has many ip_logs") { should respond_to(:ip_logs) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:surnames) }
  it { should validate_presence_of(:phone) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:role) }
  it { should validate_presence_of(:encrypted_password) }
  it { should define_enum_for(:role).with([:admin, :integrator, :client]) }
  it("should return full_name") { expect(user.full_name).to eq("#{user.name} #{user.surnames}") }

  context "role" do
    describe "admin" do
      let(:user_admin) { FactoryBot.create(:user, :admin) }
      it { expect(user_admin.send(:admin?)).to eq(true) }
      it { expect(user_admin.send(:integrator?)).to eq(false) }
      it { expect(user_admin.send(:client?)).to eq(false) }
    end
    describe "integrator" do
      let(:user_integrator) { FactoryBot.create(:user, :integrator) }
      it { expect(user_integrator.send(:admin?)).to eq(false) }
      it { expect(user_integrator.send(:integrator?)).to eq(true) }
      it { expect(user_integrator.send(:client?)).to eq(false) }
    end
    describe "client" do
      let(:user_client) { FactoryBot.create(:user, :client) }
      it { expect(user_client.send(:admin?)).to eq(false) }
      it { expect(user_client.send(:integrator?)).to eq(false) }
      it { expect(user_client.send(:client?)).to eq(true) }
    end
  end
end
