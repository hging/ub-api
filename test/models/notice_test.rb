# == Schema Information
#
# Table name: notices
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  content    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class NoticeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
