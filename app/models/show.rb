class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  
  def actors_list
    self.characters.actors.collect do |actor|
      actor.name
    end
  end
end