require 'csv'

puts 'Importing brands 5...'
CSV.foreach(Rails.root.join('db/seeds/csv/brands.csv'), headers: true) do |row|
  Brand.create! do |brand|
    brand.id = row[0]
    brand.name = row[1]
  end
end


#puts 'Importing products 10...'
#10.times do
  #Product = Product.new(
    #name: Faker::Commerce.product_name,
    #description: Faker::Lorem.paragraph,
    #brand_id: rand(1..5),
  #)
  #product.save!
#end
