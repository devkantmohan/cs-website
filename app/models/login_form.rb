class LoginForm
  include ActiveModel::Validations
  include ActiveModel::Conversion
  
  attr_accessor :username, :password
  validates_presence_of :username, :password
  
  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end
  
  def persisted?
    false
  end
  
end