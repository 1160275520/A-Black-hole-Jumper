namespace :aws do
  desc "TODO"
  task get_pictures: :environment do
   get_picture_array_from_bucket('capetownpicture')
   get_picture_array_from_bucket('nepalpictures')
   get_picture_array_from_bucket('mountainsnowpictures')
   get_picture_array_from_bucket('apuausangate')
   get_picture_array_from_bucket('machupicchupictures')
   get_picture_array_from_bucket('aboutmepictures')
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
      @picture = Picture.find_or_create_by(url: picture.presigned_url(:get), category: bucketname)
   end
end


