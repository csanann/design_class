#file: music_list.rb
class MusicList
    def initialize
        @musics = []
    end

    def add(music)
        @musics << music
    end

    def complete(music)
        fail 'Not in the list' unless @musics.include? music
        @musics.delete(music)
    end

    def list
        return @musics
    end
end