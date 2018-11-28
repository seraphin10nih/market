require 'test_helper'

class ShirtTest < ActiveSupport::TestCase
  test "product attributes must not be empty" do
    shirt = Shirt.new
    assert shirt.invalid?
    assert shirt.errors[:title].any?
    assert shirt.errors[:description].any?
    assert shirt.errors[:price].any?
    assert shirt.errors[:image_url].any?
  end

  test "shirt price must be greater than or equal to 1" do
    shirt = Shirt.new(
      title: "Some shirt",
      description: "some description",
      price: 0,
      image_url: "abc.jpg"
    )
  
    assert shirt.invalid?
    assert_equal ["must be greater than or equal to 1"], shirt.errors[:price]
  
    shirt.price = 1
    assert shirt.valid?
  end
  test "shirt title must be unique regardless of the case" do
   shirt = shirts(:one).dup
    assert shirt.invalid?
    assert_equal ["has already been taken"], shirt.errors[:title]
  
    shirt.title.upcase!
    assert shirt.invalid?
    assert_equal ["has already been taken"], shirt.errors[:title]
  
    shirt.title = "changed"
    assert shirt.valid?
  end
  test "shirt image_url must end with .jpg, .gif or .png regardless of the case" do
    shirt = shirts(:one)
    valids = %w(bor1.jpg bor1.gif bor1.png bor1.JPG bor1.GIF bor1.PNG http://bor1.bar/baz/some.jpg)
    invalids = %w(foo.xls bor1.gif.exe)
  
    invalids.each do |url|
          shirt.image_url = url
      assert shirt.invalid?
      assert_equal ["doit être au format jpg, png ou gif"], shirt.errors[:image_url]
    end
  
    valids.each do |url|
      shirt.image_url = url
      assert shirt.valid?
    end
  end
  
end
