module Queries::MyProfile
  class Payments < Queries::BaseQuery

    type OutputTypes::BankAccountDetailType, null: true

    def resolve
      user = context[:current_user]
      user_bank_accounts = Pundit::policy_scope(user, ::BankAccount.all)


      payments = []
      ENABLED_CURRENCY_TRADER_CURRENCIES.each do |currency|
        bank_accounts = user_bank_accounts.where(currency:currency).select("id", "iban", "primary")
        payments.push({currency: currency, bank_accounts: bank_accounts})
      end

      {
          bank_accounts: payments
      }

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
