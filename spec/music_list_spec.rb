#file: music_list_spec.rb
require 'music_list'

RSpec.describe MusicList do
    context'given no music' do
        it'has an empty list'do
            music_list = MusicList.new
            expect(music_list.list).to eq []
        end
    end

    context 'given two music' do
        it 'has both musics in the list' do
            music_list = MusicList.new
            music_list.add("Flower")
            music_list.add("Made you look")
            expect(music_list.list).to eq ["Flower", "Made you look"]
        end
    end
    
    context 'when we complete a music' do
        it 'removes the music from the list' do
            music_list = MusicList.new
            music_list.add("Flower")
            music_list.add("Made you look")
            music_list.complete("Flower")
            expect(music_list.list).to eq ["Made you look"]
        end
    end

    context 'when we try to complete an non-existing music' do
        it 'fails' do
            music_list = MusicList.new
            music_list.add("Flower")
            expect { music_list.complete("calm down") }.to raise_error "Not in the list"
        end
    end
end