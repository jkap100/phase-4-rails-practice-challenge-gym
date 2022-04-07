class TotalMembershipSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :total_memberships

  def total_memberships
    object.memberships.sum(:charge)
  end
end
