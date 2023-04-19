#file: todo_list_recipe.md

1. describe the problem
As a user
so thatI can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them

I can focus of tasks to complete
I want to mark tasks as complete and  have disapper from the list

TodoList
: init, add, delete, list

2. Design class method

Class TodoList
    def initialize
        @task = []
    end

    def add(task)
        @tasks << task
    end

    def list(task)
        #returns a list of tasks/string
        return @tasks
        #expect the completed task
    end

    def track(task)
        return 
    end

    def complete(task)
        return nothing
        false if task doesn't exist
    end
end

3. Create examples as tests
1
todo_list = TodoList.new
todo_list.list => []

2
todo_list = TodoList.new
todo_list.add("wash laundry")
todo_list.list => ["wash laundry"]

3
todo_list = TodoList.new
todo_list.add("wash laundry")
todo_list.add("wash dishes")
todo_list.list => ["wash laundry", "wash dishes"]

4
todo_list = TodoList.new
todo_list.add("wash laundry")
todo_list.delete("wash laundry")
todo_list.list => fails "Not on the list"


4. implement the behavious