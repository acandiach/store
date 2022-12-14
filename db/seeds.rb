require 'csv'

puts 'Importing brands 5...'
CSV.foreach(Rails.root.join('db/seeds/csv/brands.csv'), headers: true) do |row|
  Brand.create! do |brand|
    brand.id = row[0]
    brand.name = row[1]
  end
end

puts 'Importing categories 5...'
CSV.foreach(Rails.root.join('db/seeds/csv/categories.csv'), headers: true) do |row|
  Category.create! do |category|
    category.id = row[0]
    category.name = row[1]
  end
end

puts 'Creating User admin...'
CSV.foreach(Rails.root.join('db/seeds/csv/users.csv'), headers: true) do |row|
  User.create! do |user|
    user.id = row[0]
    user.email = row[1]
    user.password = row[2]
    user.rol = row[3]
  end
end

#puts 'Importing products 5...'
#5.times do
  #product = Product.new(
    #name: Faker::Commerce.product_name,
    #description: Faker::Lorem.paragraph,
    #brand_id: rand(1..5),
  #)
  #product.save!
#end
