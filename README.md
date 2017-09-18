# To Do

#### _Project in Ruby_

#### Mitch Long & Kristen Kulha

## Description

_A Ruby Script_

## Setup/Installation Requirements

* Clone this repository

## Specifications

* Program can add a task to an array of saved tasks
  * Example input: task.save()
  * Example output: task_list = [task]
* Program will sort tasks by their due date
  * Example input: task1.due_date = 2017-11-21 task2.duedate = 2017-11-03
  * Example output: Task.sort() = [task2, task1]
* Program lets you read description out
  * Example input: test_task = Task.new({:description => "learn SQL"})
  * Example output: test_task.description() = "learn SQL"
* Program lets you read the list ID out
  * Example input: test_task = Task.new({:description => "learn SQL", :list_id => 1})
  * Example output: test_task.list_id() = 1
* Override the == so that it returns true if the task has the same description and list ID
  * Example input:   task1 = Task.new({:description => "learn SQL", :list_id => 1, :due_date => '2017-11-21'})
    task2 = Task.new({:description => "learn SQL", :list_id => 1,:due_date => '2017-11-21'})
  * Example output: task1 = task2



## Support and contact details

_Please contact [meechllada@gmail.com](mailto:meechllada@gmail.com) with questions, comments, or issues._

## Technologies Used

* Ruby

### License

Copyright (c) 2017 **Mitch Long & Kristen Kulha**

*This software is licensed under the MIT license.*
