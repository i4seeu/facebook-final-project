# frozen_string_literal: true

# frozen_string_literal: true.
FactoryBot.define do
    factory :user, aliases: %i[author commentator] do
        last_name { 'event_creator' }
        first_name { 'last_name_creator' }
        sequence(:email) { |n| "tester#{n}@example.com" }
        password { 'anything' }
        password_confirmation { 'anything' }
    end
end