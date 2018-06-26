class Student
  attr_accessor :name, :grade

  def initialize(name, grade, id=nil)
    @id = id
    @grade = grade
    @name = name
  end

  def self.create_table
    sql = <<-SQL
      CREATE TABLE IF NOT EXISTS students (
        id INTEGER PRIMARY KEY,
        name TEXT,
        grade TEXT
      )
      SQL

      DB[:conn].execute(sql)
  end
  # 
  # def self.drop_table
  # end
  # 
  # def save
  # end
  # 
  # def self.create(name:, grade:)
  #   student = Student.new(name, grade)]
  #   student.save
  #   student
  # end
  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]

end
