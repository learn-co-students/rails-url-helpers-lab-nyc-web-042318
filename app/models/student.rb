class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  # def active
  #   if self.active? == false
  #     false
  #   else
  #     true
  #   end
  # end
end
