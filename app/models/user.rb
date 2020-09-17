# == Schema Information
#
# Table name: users
#
#  id                  :bigint           not null, primary key
#  current_sign_in_at  :datetime
#  current_sign_in_ip  :string(255)
#  email               :string(255)
#  encrypted_password  :string(255)      default(""), not null
#  fixed_header        :boolean          default(TRUE), not null
#  fixed_sidebar       :boolean          default(TRUE), not null
#  header_color        :string(255)      default("bg-royal header-text-light"), not null
#  last_sign_in_at     :datetime
#  last_sign_in_ip     :string(255)
#  name                :string(255)
#  phone               :string(255)
#  remember_created_at :datetime
#  role                :integer          default("admin")
#  sidebar_color       :string(255)      default("bg-royal sidebar-text-light"), not null
#  sign_in_count       :integer          default(0), not null
#  surnames            :string(255)
#  tab_line            :boolean          default(FALSE), not null
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
# Indexes
#
#  index_users_on_email  (email) UNIQUE
#
class User < ApplicationRecord
  devise :timeoutable, :timeout_in => 1.day

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :ip_logs

  validates_presence_of [ :name, :surnames, :phone, :email, :role, :encrypted_password ]

  enum role: [ :admin, :integrator, :client ]

  def full_name
    "#{self.name} #{self.surnames}"
  end

  private

  def admin?
    self.role == 'admin'
  end

  def integrator?
    self.role == 'integrator'
  end

  def client?
    self.role == 'client'
  end

end
