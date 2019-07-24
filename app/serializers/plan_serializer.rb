# frozen_string_literal: true

class PlanSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :text, :starting_date, :ending_date, :datetime, :comments, :rating
  has_one :user
  def editable
    scope == object.user
  end
end
