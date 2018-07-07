require 'test_helper'

class AudioLayoutTest < ActionDispatch::IntegrationTest
  def setup
    @audio_file = Audio.first
    @event = Event.first
  end

  test 'invalid audio submission' do
    get new_audio_path
    assert_no_difference 'Audio.count' do
      post audios_path, params: { audio: { title: "",
                                           event_id: "" } }
    end
    assert_template 'audios/new'
  end

  test 'valid audio submission' do
    get new_audio_path
    assert_difference 'Audio.count', 1 do
      post audios_path, params: { audio: { title: "a title",
                                           event_id: @event.id } }
    end
    follow_redirect!
    assert_template 'manage_song_files'
  end

  test 'manage_song_files renders with edit and delete links' do
    get manage_song_files_path
    audio_files = Audio.all
    audio_files.each do |audio|
      assert_select 'a[href=?]', edit_audio_path(audio), text: 'Edit'
      assert_select 'a[href=?]', audio_path(audio), text: 'Delete'
    end
  end

  test 'delete audio file' do
    assert_difference 'Audio.count', -1 do
      delete audio_path(@audio_file)
    end
  end

  test 'edit audio file' do
    get edit_audio_path(@audio_file)
    patch audio_path(@audio_file), params: { audio: { title: 'test title',
                                                      event_id: @event.id } }
    assert_redirected_to manage_song_files_path
  end



end