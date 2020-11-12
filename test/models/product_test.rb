# == Schema Information
#
# Table name: products
#
#  id          :bigint           not null, primary key
#  description :text             not null
#  name        :string           not null
#  price       :decimal(5, 2)    not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :integer          not null
#
# Indexes
#
#  index_products_on_category_id  (category_id)
#
require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
