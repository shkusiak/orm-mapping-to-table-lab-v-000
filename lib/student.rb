class Student
  attr_accessor :name, :grade

  def initialize(name, grade, id=nil)
    @id = id
    @grade = grade
    @name = name
  end

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]

end
