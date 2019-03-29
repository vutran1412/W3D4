# == Schema Information
#
# Table name: polls
#
#  id         :bigint(8)        not null, primary key
#  author     :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  poll       :text             not null
#

class Poll < ApplicationRecord
  belongs_to :user,
    primary_key: :id,
    foreign_key: :author,
    class_name: :User

  has_many :questions,
    primary_key: :id,
    foreign_key: :poll_id,
    class_name: :Question

  has_many :user_responses,
    through: :questions,
    source: responses

end
