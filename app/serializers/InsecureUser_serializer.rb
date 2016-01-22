class InsecureUserSerializer < ActiveModel::Serializer
  attributes :id, :email, :full_name

  def full_name
    object.full_name
  end
end
