module Queries
  class BankAccount < Queries::BaseQuery

    type [OutputTypes::BankAccountType], null: true

    def resolve
      ::BankAccount.all.order("ID DESC")

    end
  end
end

# this is query from caesar-portal
# 1. query/my_profile/payments.rb
#
# 2. policies/bank_account_policy.rb
# class BankAccountPolicy < ApplicationPolicy
#   class Scope < Scope
#     def resolve
#       if Rails.env == "internal_staging"
#         if user.id == 17 || user.id == 11
#           scope.all
#         else
#           scope.where(user_id: user.id)
#         end
#
#       elsif Rails.env == "staging"
#         if user.id == 13 || user.id == 15
#           scope.all
#         else
#           scope.where(user_id: user.id)
#         end
#       else
#         if user.id == 61
#           scope.all
#         else
#           scope.where(user_id: user.id)
#         end
#       end
#     end
#   end
# end
