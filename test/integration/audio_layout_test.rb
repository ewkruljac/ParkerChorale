require 'test_helper'

class AudioLayoutTest < ActionDispatch::IntegrationTest
  test 'invalid audio submission' do
    get new_audio_path
    assert_no_difference 'Audio.count' do
      post audios_path, params: { audio: { title: "",
                                           event_id: "" } }
    end
    assert_template 'audios/new'
  end

  test 'valid audio submission' do
    event = Event.first
    get new_audio_path
    assert_difference 'Audio.count', 1 do
      post audios_path, params: { audio: { title: "a title",
                                           event_id: event.id } }
    end
    follow_redirect!
    assert_template 'manage_song_files'
  end

end