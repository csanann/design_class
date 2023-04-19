#file: todo_list_spec.rb
require 'todo_list'

RSpec.describe TodoList do
    describe "#add_task" do
        it "adds a task to the list" do
            #create a new TodList object
            todo_list = TodoList.new
            todo_list.add_task("Task 1")
            expect(todo_list.show_list).to include("Task 1")
        end
    end

    describe "#complete_task" do
        it "marks a task as completed and removes it from the list" do
            todo_list = TodoList.new
            todo_list.add_task("Task 1")
            todo_list.complete_task("Task 1")
            expect(todo_list.show_list).not_to include("Task 1")
        end
    end

    describe "#show_list" do
        it "shows a list of uncompeted tasks" do
            todo_list = TodoList.new
            todo_list.add_task("Task 1")
            todo_list.add_task("Task 2")
            todo_list.complete_task("Task 1")
            expect(todo_list.show_list).to eq(["Task 2"])
        end
    end
end