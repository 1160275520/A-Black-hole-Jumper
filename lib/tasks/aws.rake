namespace :aws do
  desc "TODO"
  task get_pictures: :environment do
   get_picture_array_from_bucket('capetownpictures')
   get_picture_array_from_bucket('southafricapictures')
   get_picture_array_from_bucket('nepalpictures')
   get_picture_array_from_bucket('perupictures')
   get_picture_array_from_bucket('boliviapictures')
   get_picture_array_from_bucket('apuausangate')
   get_picture_array_from_bucket('machupicchupictures')
   puts "I got the pictures"
  end

end

def get_picture_array_from_bucket(bucketname)
   bucket = S3.bucket(bucketname)
   @pictures = bucket.objects
   create_pictures(@pictures, bucketname)
end

def create_pictures(pictures, bucketname)
   pictures.each do |picture|
      @picture = Picture.find_or_create_by(url: picture.public_url, category: bucketname)
   end
end


