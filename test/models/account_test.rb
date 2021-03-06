# == Schema Information
#
# Table name: accounts
#
#  id                              :integer          not null, primary key
#  user_id                         :integer
#  balance                         :decimal(36, 18)  default(0.0)
#  locked                          :decimal(36, 18)  default(0.0)
#  in                              :decimal(36, 18)
#  out                             :decimal(36, 18)
#  default_withdraw_fund_source_id :integer
#  created_at                      :datetime         not null
#  updated_at                      :datetime         not null
#  currency_id                     :integer
#
# Indexes
#
#  index_accounts_on_user_id_and_currency_id  (user_id,currency_id)
#

require 'test_helper'

class AccountTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
