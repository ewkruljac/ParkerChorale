require 'test_helper'

class AudiosControllerTest < ActionDispatch::IntegrationTest
  def setup
    @audio_item = Audio.first
  end

  test 'should get audios' do
    get audios_url
    assert_response :success
  end

  test 'should get audios/new' do
    get new_audio_path
    assert_response :success
  end

  test 'should get manage_song_files' do
    get manage_song_files_path
    assert_response :success
  end

  test 'should get audios edit path' do
    audio = Audio.first
    get edit_audio_path audio
    assert_response :success
  end

end
