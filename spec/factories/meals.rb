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
FactoryBot.define do
  factory :meal do
    heat_rating { 1 }
    cuisine_type { "MyString" }
    recency_weight { 1 }
  end
end
