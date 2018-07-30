class MenuController < ApplicationController

   def capetown
      @pictures = Picture.where(category: 'capetownpictures')
   end

   def nepal
      @pictures = Picture.where(category: 'nepalpictures')
   end

   def peru
      @pictures = Picture.where(category: 'perupictures')
   end

   def apuausangate
      @pictures = Picture.where(category: 'apuausangate')
   end

   def machupicchu
      @pictures = Picture.where(category: 'machupicchupictures')
   end

   def bolivia
      @pictures = Picture.where(category: 'boliviapictures')
   end

   def southafrica
      @pictures = Picture.where(category: 'southafricapictures')
   end

   def video
   end

   def about
      get_picture_array_from_bucket('aboutmepictures')
   end

   def project
   end 

   def postcards
      redirect_to "/postcards"
   end 

   private
   #get the picture from the bucket called capetownpicture
   def get_picture_array_from_bucket(bucketname)
      bucket = S3.bucket(bucketname)
      @pictures = bucket.objects
   end

end