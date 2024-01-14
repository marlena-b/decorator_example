class UserDecorator < Draper::Decorator
  delegate_all

  def full_name
    "#{name} #{surname}"
  end

  def full_address
    "#{country} #{city} #{street}"
  end
end
