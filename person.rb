require './decorate'
require './rental'
require './book'
class Person < Nameable
  attr_reader :id
  attr_accessor :name, :age, :rentals

  INITIAL_PERMISSION = true
  def initialize(age, name = 'unknown', parent_permission = INITIAL_PERMISSION)
    super()
    @id = Random.rand(1..1000)
    @age = age
    @name = name
    @parent_permission = parent_permission
    @rentals = []
  end

  def of_age?
    true if @age >= 18
  end

  private :of_age?

  def can_use_services?
    true if of_age? or @parent_permission
  end

  def correct_name
    @name
  end

  def add_rental(book, date)
    Rental.new(date, book, self)
  end
end
