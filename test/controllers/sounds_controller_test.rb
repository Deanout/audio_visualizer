require "test_helper"

class SoundsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sound = sounds(:one)
  end

  test "should get index" do
    get sounds_url
    assert_response :success
  end

  test "should get new" do
    get new_sound_url
    assert_response :success
  end

  test "should create sound" do
    assert_difference("Sound.count") do
      post sounds_url, params: { sound: { description: @sound.description, name: @sound.name } }
    end

    assert_redirected_to sound_url(Sound.last)
  end

  test "should show sound" do
    get sound_url(@sound)
    assert_response :success
  end

  test "should get edit" do
    get edit_sound_url(@sound)
    assert_response :success
  end

  test "should update sound" do
    patch sound_url(@sound), params: { sound: { description: @sound.description, name: @sound.name } }
    assert_redirected_to sound_url(@sound)
  end

  test "should destroy sound" do
    assert_difference("Sound.count", -1) do
      delete sound_url(@sound)
    end

    assert_redirected_to sounds_url
  end
end
