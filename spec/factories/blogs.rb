FactoryBot.define do
  factory :blog do
    title "MyString"
    description "MyText"
    is_visible false
    is_published false
    publish_at Date.today
  end
end
