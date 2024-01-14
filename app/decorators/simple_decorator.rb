class SimpleDecorator
  attr_reader :object

  def initialize(object)
    @object = object
  end

  def method_missing(m, *args, &block)
    object.send(m, *args, &block)
  end
end
