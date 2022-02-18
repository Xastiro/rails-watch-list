# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

Movie.create(title: "Wonder Woman 1984", overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: 6.9)
Movie.create(title: "The Shawshank Redemption", overview: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison", poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", rating: 8.7)
Movie.create(title: "Titanic", overview: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", poster_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", rating: 7.9)
Movie.create(title: "Ocean's Eight", overview: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.", poster_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg", rating: 7.0)

urls = ['https://cdn-prod.medicalnewstoday.com/content/images/articles/317/317756/a-group-of-friends-laughing.jpg',
        'https://cdn.pixabay.com/photo/2017/08/10/03/47/guy-2617866__480.jpg',
        'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/msdgowi-ec001-1551470524.jpg?crop=1.00xw:0.939xh;0,0&resize=480:*',
        'https://d1fmx1rbmqrxrr.cloudfront.net/cnet/optim/i/edit/2019/04/avengers-endgame-box-office__w770.jpg',
        'https://cdn.mos.cms.futurecdn.net/Gy5YY89HNsbmqL53asZhg5.jpg']

categories = %w[Comedy Drama Classic Superhero Sci-Fi]

urls.each_with_index do |url, index|
  file = URI.open(url)
  article = List.new(name: categories[index], url: url)
  article.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  article.save
end
