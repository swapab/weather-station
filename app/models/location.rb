class Location
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :city, :country

  validates :city, presence: true
  validates :country, presence: true, if: :city?

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value.try(:downcase))
    end
  end

  def city?
    city.present?
  end

  def persisted?
    false
  end

  def to_param
    "#{city}-#{country}"
  end
end
