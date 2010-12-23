class Order < ActiveRecord::Base
  belongs_to :customer
  
  validates_uniqueness_of :name, :number, :tro_invoice
  validates_numericality_of :quantity, :unit_price, :shipping_price 
  validates_presence_of :name
  
  def total()
    return unit_price * quantity
  end
  
end
