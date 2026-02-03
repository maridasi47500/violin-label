require "application_system_test_case"

class PiecesTest < ApplicationSystemTestCase
  setup do
    @piece = pieces(:one)
  end

  test "visiting the index" do
    visit pieces_url
    assert_selector "h1", text: "Pieces"
  end

  test "should create piece" do
    visit pieces_url
    click_on "New piece"

    fill_in "Composer", with: @piece.composer_id
    fill_in "Content", with: @piece.content
    fill_in "Key signature", with: @piece.key_signature
    fill_in "Name", with: @piece.name
    fill_in "Time signature", with: @piece.time_signature
    click_on "Create Piece"

    assert_text "Piece was successfully created"
    click_on "Back"
  end

  test "should update Piece" do
    visit piece_url(@piece)
    click_on "Edit this piece", match: :first

    fill_in "Composer", with: @piece.composer_id
    fill_in "Content", with: @piece.content
    fill_in "Key signature", with: @piece.key_signature
    fill_in "Name", with: @piece.name
    fill_in "Time signature", with: @piece.time_signature
    click_on "Update Piece"

    assert_text "Piece was successfully updated"
    click_on "Back"
  end

  test "should destroy Piece" do
    visit piece_url(@piece)
    click_on "Destroy this piece", match: :first

    assert_text "Piece was successfully destroyed"
  end
end
