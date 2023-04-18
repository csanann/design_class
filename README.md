# Design a Single Class Program

this repository contains Ruby programs that help users manage thier todo tasks and music listening history. The programs follow a design pattern consisting of four main steps:
1. Describe the problem
2. Design the class interface
3. create examples as tests
4. Implement the behavior

## TodoList

The TodoList program allows users to manage their daily tasks by adding and completing tasks. Users can see a list of uncompleted tasks.

## MusicList

The MusicList program allows users to keep track of the tracks they've listened to. Users can add listened tracks and see a list of all the tracks added to the list.

## Getting Started

To use these programs, clone the repository and install the required Ruby gems by running: bundle install

## Running Tests

Tests are written using RSpec. To run the tests, execute: rspec

## Usage

To use the TodoList or MusicList programs, create a new instance of the respective class and call the provided methods. For example:
todo_list = TodoList.new
todo_list.add_task("Car wash")
todo_list.complete_task("Car wash")
puts todo_list.show_list

music_list = MusicList.new
music_list.add("Flowers")
puts musice_list.list

## Contributing

Pull requests are welcome. 

