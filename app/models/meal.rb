# == Schema Information
#
# Table name: meals
#
#  id             :bigint           not null, primary key
#  cuisine_type   :string
#  heat_rating    :integer
#  name           :string
#  recency_weight :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class Meal < ApplicationRecord
end
