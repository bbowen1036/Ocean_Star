# == Schema Information
#
# Table name: carts
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer          not null
#
# Indexes
#
#  index_carts_on_user_id  (user_id) UNIQUE
#
class Cart < ApplicationRecord
  belongs_to :user, 
    foreign_key: :user_id,
    class_name: :User

  has_many :cart_items,
    foreign_key: :cart_id,
    class_name: :CartItem,
    dependent: :destroy
end
