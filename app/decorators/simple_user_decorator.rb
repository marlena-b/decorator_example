class SimpleUserDecorator < SimpleDecorator
  def full_name
    "#{name} #{surname} nana"
  end

  def full_address
    "#{country} #{city} #{street}"
  end
end
