class Customer < ActiveRecord::Base
  has_many :orders
  
  validates_presence_of :name
  validates_format_of :home_phone, :cell_number, :with => /\A(?:\([2-9]\d{2}\)\ ?|[2-9]\d{2}(?:\-?|\ ?))[2-9]\d{2}[- ]?\d{4}\Z/i, :allow_blank => :true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :allow_blank => :true
  
end
