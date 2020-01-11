class Character < ActiveRecord::Base
  belongs_to :show
  belongs_to :actor
  
  def say_that_thing_that_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end
end