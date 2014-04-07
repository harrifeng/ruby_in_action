class MyLogger
  private_class_method :new
  @@logger = nil
  def MyLogger.create
    @@logger = new unless @@logger
    @@logger
  end
end

puts MyLogger.create.__id__
puts MyLogger.create.__id__

person1 = "Tim"
person2 = person1.dup
person2.freeze
person1[0] = 'J'
print person1
print person2