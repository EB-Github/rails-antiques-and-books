require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @product = Product.new(name: 'Test', description: 'A test', kind: 'kind', imagesrc: 'http://test.com')
  end
  
  test 'base case' do
   assert @product.valid?
  end
end
