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

class UserSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :full_name, :email, 

  # Delegate the practical definition of `full_name` to
  # the User model, where it belongs, rather than
  # (re)defining it here.
  def full_name
    object.full_name
  end

  def created_at
    object.created_at.strftime('%B %d, %Y')
  end
end
