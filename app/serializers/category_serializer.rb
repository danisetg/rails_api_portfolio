class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :parent, :children

  def parent
    object.parent != nil ? CategorySerializer.new(object.parent) : nil
  end

  def children
    object.children
  end
end
