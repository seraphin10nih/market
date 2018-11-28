require "application_system_test_case"

class ShirtsTest < ApplicationSystemTestCase
  setup do
    @shirt = shirts(:one)
  end

  test "visiting the index" do
    visit shirts_url
    assert_selector "h1", text: "Shirts"
  end

  test "creating a Shirt" do
    visit shirts_url
    click_on "New Shirt"

    fill_in "Description", with: @shirt.description
    fill_in "Image Url", with: @shirt.image_url
    fill_in "Price", with: @shirt.price
    fill_in "Title", with: @shirt.title
    click_on "Create Shirt"

    assert_text "Shirt was successfully created"
    click_on "Back"
  end

  test "updating a Shirt" do
    visit shirts_url
    click_on "Edit", match: :first

    fill_in "Description", with: @shirt.description
    fill_in "Image Url", with: @shirt.image_url
    fill_in "Price", with: @shirt.price
    fill_in "Title", with: @shirt.title
    click_on "Update Shirt"

    assert_text "Shirt was successfully updated"
    click_on "Back"
  end

  test "destroying a Shirt" do
    visit shirts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shirt was successfully destroyed"
  end
end
