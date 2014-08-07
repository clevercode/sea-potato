class Dive < ActiveRecord::Base

  belongs_to :diver

  attr_accessor :dive_site, :began_at_time, :began_at_date

end
