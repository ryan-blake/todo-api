class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :list

  def name
    object.name
  end

  def created_at
    object.created_at.strftime('%B %d, %Y')
  end
end
