class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end
  # 
  # def active?
  #   if self.active == false
  #     "is currently active."
  #   else self.active == true
  #     "is currently inactive."
  #   end
  # end

end
