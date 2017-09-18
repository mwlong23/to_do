class Task
  attr_reader(:description, :list_id, :due_date)

  def initialize(attributes)
    @description = attributes.fetch(:description)
    @list_id = attributes.fetch(:list_id)
    @due_date = attributes.fetch(:due_date)
  end

  def self.all
    returned_tasks = DB.exec("SELECT * FROM tasks;")
    tasks = []
    returned_tasks.each() do |task|
      description = task.fetch("description")
      list_id = task.fetch("list_id").to_i() # The information comes out of the database as a string.
      due_date = task.fetch("due_date")
      tasks.push(Task.new({:description => description, :list_id => list_id, :due_date => due_date}))
    end
    tasks
  end

  def save
    DB.exec("INSERT INTO tasks (description, list_id, due_date) VALUES ('#{@description}', #{@list_id},'#{@due_date}') ;")
  end

  def ==(another_task)
    self.description().==(another_task.description()).&(self.list_id().==(another_task.list_id()))
  end

  def self.sort
    sorted_tasks = DB.exec("SELECT * FROM tasks ORDER BY due_date ASC;")
    tasks_sorted = []
    sorted_tasks.each() do |task|
      description = task.fetch("description")
      list_id = task.fetch("list_id").to_i() # The information comes out of the database as a string.
      due_date = task.fetch("due_date")
      tasks_sorted.push(Task.new({:description => description, :list_id => list_id, :due_date => due_date}))
    end
    tasks_sorted
  end
end
