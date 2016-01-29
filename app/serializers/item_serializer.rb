# == Schema Information
#
# Table name: items
#
#  id         :integer          not null, primary key
#  list_id    :integer
#  name       :string
#  completed  :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :list_id, :completed

  def name
    object.name
  end

  def created_at
    object.created_at.strftime('%B %d, %Y')
  end
end
