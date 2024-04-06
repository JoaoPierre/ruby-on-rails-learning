

require 'faker'

10.times do
  product = Product.new(
    name: Faker::Commerce.product_name
  )
  product.save
end
