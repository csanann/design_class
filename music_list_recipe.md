#file: music_list.rb
Music
Class Deign Recipe
1. Describe the problem
As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

the music list
to add, to complete the music, to list the music

2. Design the class interface
class MusicList
    def initialize
        @musics = []
    end

    def add(music)
        @musics << music
    end

    def complete(music)
        fail 'Not in the list' 
        @musics.delete(music)
    end

    def list
        return @musics
    end
end

    
3. Create examples as tests

1
music_list = MusicList.new
music_list.list => []

2
music_list = MusicList.new
music_list.add("Flower")
music_list.list => ["Flower"]

3
music_list = MusicList.new
music_list.add("Flower")
music_list.add("Made you look")
music_list.list => ["Flower", "Made you look"]

4
music_list = MusicList.new
music_list.add("Flower")
music_list.add("Made you look")
music_list.complete("Flower")
music_list.list => ["Made you look"]

5
music_list = MusicList.new
music_list.add("Flower")
music_list.add("calm down")
music_list.complete("Not in the list")

4. Implement the behavious
