FactoryBot.define do
  factory :comment do
    body "MyText"
    commenter "Manish jain"
    is_deleted false
  end
end
