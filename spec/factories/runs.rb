# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :run do
    date "2012-12-30"
    distance 1.5
    hours 1
    minutes 1
    seconds 1
    notes "MyText"
    user nil
  end
end
