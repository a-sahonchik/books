require 'test_helper'

class ProductTest < ActiveSupport::TestCase

  test "roduct attributes must not be empty" do
  product = Product.new
  assert product.invalid?
  assert product.errors[:title].any?
  assert product.errors[:description].any?
  assert product.errors[:price].any?
  assert product.errors[:author].any?
  assert product.errors[:origtitle].any?
  assert product.errors[:serie].any?
  assert product.errors[:publisher].any?
  assert product.errors[:year].any?
  assert product.errors[:binding].any?
  assert product.errors[:page].any?
  end

#  test "product price must be positive" do
#  product = Product.new(title: "Книга тестовая 1",
#                      description: "АААааа111222",
#                      author: "АААааа111222",
#                      origtitle: "АААааа111222",
#                      serie: "АААааа111222",
#                      publisher: "АААааа111222",
#                      year: "2019",
#                      binding: "АААааа111222",
#                      page: "1000",
#                      discount: "10",
#                      newprice: "15")
#  product.price = -1
#  assert product.invalid?
#  assert_equal ["must be greater than or equal to 0.01"],
#  product.errors[:price]

#  product.price = 0
#  assert product.invalid?
#  assert_equal ["must be greater than or equal to 0.01"],
#  product.errors[:price]

#  product.price = 1
#  assert product.valid?
#  end

end
