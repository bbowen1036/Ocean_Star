# == Schema Information
#
# Table name: messages
#
#  id         :bigint           not null, primary key
#  message    :text             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Message < ApplicationRecord
  validates :message, presence: true
end
