require "test_helper"

class ProductTest < ActiveSupport::TestCase
  test 'No se puede guardar el producto sin texto' do
    products(:product_one, :product_two).each do |product|
      res = product.valid?
      assert_equal false, res, "No estan validando el dato #{product.name}"
    end
  end
end
