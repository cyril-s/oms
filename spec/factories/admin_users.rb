# == Schema Information
#
# Table name: admin_users
#
#  id                 :bigint(8)        not null, primary key
#  email              :string           default(""), not null
#  encrypted_password :string           default(""), not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
# Indexes
#
#  index_admin_users_on_email  (email) UNIQUE
#

FactoryBot.define do
  factory :admin_user do
  end
end
