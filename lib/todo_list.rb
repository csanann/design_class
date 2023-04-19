#file: todo_list.rb

class TodoList
    def initialize
        @tasks = []
    end

    def add_task(task)
        #add a new task to the list as a hash with the task description
        #and a 'completed' flad set to false
        @tasks << { description: task, completed: false }
    end

    def complete_task(task)
        #task is a string/ task description
        @tasks.each do | t |
            if t[:description] == task
                t[:completed] = true
                break
            end
        end
    end

    def show_list
        #return a list of tasks that are not completed
        @tasks.select { |t| !t[:completed] }.map { |t| t[:description] }
    end
end