FactoryGirl.define do
  factory :location do
    skip_create

    trait :mumbai do
      city 'Mumbai'
      country 'India'
    end

    trait :berlin do
      city 'Berlin'
      country 'Deutschland'
    end
  end
end
