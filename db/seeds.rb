# encoding: UTF-8

MilkType.destroy_all
Country.destroy_all
Texture.destroy_all

Cheese.destroy_all
User.destroy_all

milk_types = MilkType.create [
  { :name => 'Buffalo' },
  { :name => 'Camel' },
  { :name => 'Cow' },
  { :name => 'Dolphin' },
  { :name => 'Goat' },
  { :name => 'Mare' },
  { :name => 'Sheep' },
  { :name => 'Yak' },
  { :name => 'Mixed' },
  { :name => 'Unknown' }
]

countries = Country.create [
  { :name => 'Argentina' },
  { :name => 'Armenia' },
  { :name => 'Australia' },
  { :name => 'Austria' },
  { :name => 'Azerbaijan' },
  { :name => 'Bangladesh' },
  { :name => 'Belgium' },
  { :name => 'Bhutan' },
  { :name => 'Bolivia' },
  { :name => 'Bosnia and Herzegovina' },
  { :name => 'Brazil' },
  { :name => 'Bulgaria' },
  { :name => 'Canada' },
  { :name => 'Chile' },
  { :name => 'China' },
  { :name => 'Colombia' },
  { :name => 'Croatia' },
  { :name => 'Cyprus' },
  { :name => 'Czech Republic' },
  { :name => 'Denmark' },
  { :name => 'Egypt' },
  { :name => 'El Salvador' },
  { :name => 'Ethiopia' },
  { :name => 'Finland' },
  { :name => 'France' },
  { :name => 'Georgia' },
  { :name => 'Germany' },
  { :name => 'Greece' },
  { :name => 'Honduras' },
  { :name => 'Hungary' },
  { :name => 'Iceland' },
  { :name => 'India' },
  { :name => 'Iran' },
  { :name => 'Ireland' },
  { :name => 'Italy' },
  { :name => 'Japan' },
  { :name => 'Latvia' },
  { :name => 'Lithuania' },
  { :name => 'Malta' },
  { :name => 'Mauritania' },
  { :name => 'Mexico' },
  { :name => 'Middle East' },
  { :name => 'Mongolia' },
  { :name => 'Nepal' },
  { :name => 'Netherlands' },
  { :name => 'New Zealand' },
  { :name => 'Nicaragua' },
  { :name => 'Norway' },
  { :name => 'Philippines' },
  { :name => 'Poland' },
  { :name => 'Portugal' },
  { :name => 'Republic of Macedonia' },
  { :name => 'Romania' },
  { :name => 'Russia' },
  { :name => 'Serbia' },
  { :name => 'Slovakia' },
  { :name => 'Slovenia' },
  { :name => 'South Africa' },
  { :name => 'South Korea' },
  { :name => 'Spain' },
  { :name => 'Sweden' },
  { :name => 'Switzerland' },
  { :name => 'Turkey' },
  { :name => 'Ukraine' },
  { :name => 'United Kingdom' },
  { :name => 'United States' },
  { :name => 'Venezuela' }
]

textures = Texture.create [
  { :name => 'Fresh' },
  { :name => 'Semi-firm' },
  { :name => 'Semi-hard' },
  { :name => 'Semi-soft' },
  { :name => 'Soft' },
  { :name => 'Soft-ripened' },
  { :name => 'Triple Cream' },
  { :name => 'Washed-rind' },
  { :name => 'Bloomy-rind' },
  { :name => 'Processed' }
]

users = User.create [
  {
    :first_name => 'George',
    :last_name => 'Bush',
    :email => 'george@ichokedonapretzel.com',
    :alias => 'Goofy',
    :password => '123',
    :password_confirmation => '123'
  },
  {
    :first_name => 'Charles',
    :last_name => 'Munat',
    :email => 'chas@munat.com',
    :alias => 'Boy Genius',
    :password => '12345',
    :password_confirmation => '12345'
  }
]

cheeses = Cheese.create [
  { :name => 'Cheeze Whiz',
    :origin_protected => true,
    :image_url => '/assets/cheezwhiz.jpg',
    :milk_type => milk_types[1],
    :country => countries[65],
    :texture => textures[9]
  },
  { :name => 'Cheddar',
    :origin_protected => true,
    :image_url => '/assets/cheddar.jpg',
    :milk_type => milk_types[2],
    :country => countries[64],
    :texture => textures[2]
  },
  { :name => 'Brie de Meaux',
    :origin_protected => true,
    :image_url => '/assets/brie.jpg',
    :milk_type => milk_types[2],
    :country => countries[24],
    :texture => textures[5]
  },
  { :name => 'Camembert',
    :origin_protected => false,
    :image_url => '/assets/camembert.jpg',
    :milk_type => milk_types[2],
    :country => countries[24],
    :texture => textures[5]
  },
  { :name => 'Feta',
    :origin_protected => false,
    :image_url => '/assets/feta.jpg',
    :milk_type => milk_types[4],
    :country => countries[27],
    :texture => textures[2]
  },
  { :name => 'Kashkaval',
    :origin_protected => false,
    :image_url => '/assets/kashkaval.jpg',
    :milk_type => milk_types[6],
    :country => countries[52],
    :texture => textures[2]
  },
  { :name => 'Danish Blue',
    :origin_protected => false,
    :image_url => '/assets/danishblue.jpg',
    :milk_type => milk_types[2],
    :country => countries[19],
    :texture => textures[3]
  },
  { :name => 'Kwaito',
    :origin_protected => false,
    :image_url => '/assets/kwaito.jpg',
    :milk_type => milk_types[2],
    :country => countries[58],
    :texture => textures[5]
  },
  { :name => 'Paneer',
    :origin_protected => false,
    :image_url => '/assets/paneer.jpg',
    :milk_type => milk_types[2],
    :country => countries[31],
    :texture => textures[0]
  },
  { :name => 'Munster',
    :origin_protected => false,
    :image_url => '/assets/munster.jpg',
    :milk_type => milk_types[2],
    :country => countries[24],
    :texture => textures[4]
  },
  { :name => 'Butterkäse',
    :origin_protected => false,
    :image_url => '/assets/butterkase.jpg',
    :milk_type => milk_types[2],
    :country => countries[26],
    :texture => textures[3]
  },
  { :name => 'Gorgonzola',
    :origin_protected => false,
    :image_url => '/assets/feta.jpg',
    :milk_type => milk_types[2],
    :country => countries[34],
    :texture => textures[4]
  }
]

Rating.create [
  {
    :cheese => cheeses[0],
    :user => users[0],
    :star_rating => 3,
    :text_rating => 'Not bad.',
    :is_favourite => false
  },
  {
    :cheese => cheeses[9],
    :user => users[0],
    :star_rating => 1,
    :text_rating => 'Godawful.',
    :is_favourite => false
  },
  {
    :cheese => cheeses[1],
    :user => users[1],
    :star_rating => 4,
    :text_rating => 'Great on sandwiches.',
    :is_favourite => false
  },
  {
    :cheese => cheeses[2],
    :user => users[1],
    :star_rating => 5,
    :text_rating => 'Could eat it all day.',
    :is_favourite => true
  },
  {
    :cheese => cheeses[3],
    :user => users[1],
    :star_rating => 5,
    :text_rating => 'Lovely.',
    :is_favourite => true
  },
  {
    :cheese => cheeses[5],
    :user => users[1],
    :star_rating => 3,
    :text_rating => 'Interesting.',
    :is_favourite => false
  },
  {
    :cheese => cheeses[6],
    :user => users[1],
    :star_rating => 5,
    :text_rating => 'Wonderful.',
    :is_favourite => true
  },
  {
    :cheese => cheeses[7],
    :user => users[1],
    :star_rating => 4,
    :text_rating => 'Strange but fun.',
    :is_favourite => false
  },
  {
    :cheese => cheeses[8],
    :user => users[1],
    :star_rating => 3,
    :text_rating => 'Great in Indian and Pakistani food.',
    :is_favourite => false
  },
  {
    :cheese => cheeses[9],
    :user => users[1],
    :star_rating => 5,
    :text_rating => 'Delicious and soft.',
    :is_favourite => true
  },
  {
    :cheese => cheeses[10],
    :user => users[1],
    :star_rating => 4,
    :text_rating => 'Love it on salads and pizza.',
    :is_favourite => false
  }
]