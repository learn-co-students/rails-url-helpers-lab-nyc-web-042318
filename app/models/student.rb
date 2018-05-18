class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def active?
    if self.active == false
      "This student is currently inactive."
    elsif self.active == true
        "This student is currently active."
    end
  end


  def activate
    if self.active == false
      self.active = true
    elsif self.active == true
      self.active = false
    end
    self.save
  end

end
