require "test_helper"

class PiecesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @piece = pieces(:one)
  end

  test "should get index" do
    get pieces_url
    assert_response :success
  end

  test "should get new" do
    get new_piece_url
    assert_response :success
  end

  test "should create piece" do
    assert_difference("Piece.count") do
      post pieces_url, params: { piece: { composer_id: @piece.composer_id, content: @piece.content, key_signature: @piece.key_signature, name: @piece.name, time_signature: @piece.time_signature } }
    end

    assert_redirected_to piece_url(Piece.last)
  end

  test "should show piece" do
    get piece_url(@piece)
    assert_response :success
  end

  test "should get edit" do
    get edit_piece_url(@piece)
    assert_response :success
  end

  test "should update piece" do
    patch piece_url(@piece), params: { piece: { composer_id: @piece.composer_id, content: @piece.content, key_signature: @piece.key_signature, name: @piece.name, time_signature: @piece.time_signature } }
    assert_redirected_to piece_url(@piece)
  end

  test "should destroy piece" do
    assert_difference("Piece.count", -1) do
      delete piece_url(@piece)
    end

    assert_redirected_to pieces_url
  end
end
