# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  full_name  :string
#  password   :string
#  email      :string
#  login      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
  has_many :lists
end
