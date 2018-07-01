require 'test_helper'

class AudioTest < ActiveSupport::TestCase
  def setup
    event = Event.first
    @audio_item = Audio.new(title: 'Exampletitle', event_id: event.id)
  end

  test "audio_item should be valid" do
    assert @audio_item.valid?
  end

  test "title should be present" do
    @audio_item.title = ""
    assert_not @audio_item.valid?
  end

  test "event_id should be present" do
    @audio_item.event_id = ""
    assert_not @audio_item.valid?
  end
end
