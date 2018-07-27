class MenuController < ApplicationController

   def capetown
      @pictures = Picture.where(category: 'capetownpicture')
   end

   def nepal
      @pictures = Picture.where(category: 'nepalpictures')
   end

   def snowmountain
      @pictures = Picture.where(category: 'mountainsnowpictures')
   end

   def apuausangate
      @pictures = Picture.where(category: 'apuausangate')
   end

   def machupicchu
      @pictures = Picture.where(category: 'machupicchupictures')
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