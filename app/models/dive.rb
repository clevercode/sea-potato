class Dive < ActiveRecord::Base

  belongs_to :diver

  attr_accessor :dive_site


  def began_at_time
    self.began_at
  end

  def began_at_date
    self.began_at
  end

  def began_at_time=(time)
    time = DateTime.parse(time)
    if (self.began_at)
      self.began_at = self.began_at.change(:hour => time.hour, :min => time.min)
    else
      self.began_at = time
    end
  end

  def began_at_date=(date)
    date = DateTime.parse(date)
    if (self.began_at)
      self.began_at = self.began_at.change(:year => date.year, :day => date.day, :month => date.month)
    else
      self.began_at = date
    end
  end

end
