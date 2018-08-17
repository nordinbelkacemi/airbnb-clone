[1mdiff --cc app/models/kitchen.rb[m
[1mindex 1a17cba,f44385c..0000000[m
[1m--- a/app/models/kitchen.rb[m
[1m+++ b/app/models/kitchen.rb[m
[36m@@@ -2,9 -2,14 +2,22 @@@[m [mclass Kitchen < ApplicationRecor[m
    belongs_to :user[m
    has_many :bookings[m
    mount_uploader :photo, PhotoUploader[m
[32m++<<<<<<< HEAD[m
[32m +  geocoded_by :address[m
[32m +  after_validation :geocode, if: :will_save_change_to_address?[m
[32m++=======[m
[32m+   after_initialize :init[m
[32m+ [m
[32m+   def init[m
[32m+     self.rating ||= 0[m
[32m+   end[m
[32m+ [m
[32m+   def booked?[m
[32m+     # check for current or future bookings only[m
[32m+     self.bookings.count > 0[m
[32m+   end[m
[32m++>>>>>>> 0b52788462b237bfd0e51f93f96c036442d57263[m
  end[m
[32m +[m
[32m +[m
[32m +[m
[1mdiff --cc app/views/kitchens/index.html.erb[m
[1mindex 61d547c,e915584..0000000[m
[1m--- a/app/views/kitchens/index.html.erb[m
[1m+++ b/app/views/kitchens/index.html.erb[m
[36m@@@ -1,14 -1,23 +1,30 @@@[m
[32m+ <div class="main-banner" style="background-image: linear-gradient(rgba(0,0,0,0.3), rgba(0,0,0,0.2) 500%), url('https://images.unsplash.com/photo-1512916194211-3f2b7f5f7de3?ixlib=rb-0.3.5&s=5d75928313fe96ea335421979b96cd31&auto=format&fit=crop&w=1950&q=80');">[m
[32m+   <div class="banner-content">[m
[32m+     <h1>Dream Kitchens</h1>[m
[32m+     <p>The best kitchens in the world 🌍</p>[m
[32m+     <%= link_to 'Share Your Kitchen', new_kitchen_path, class: "btn btn-success btn-lg" %>[m
[32m+   </div>[m
[32m+ </div>[m
  <div class="container">[m
    <div class="row">[m
[32m++<<<<<<< HEAD[m
[32m +    <% @kitchens.each do |kitchen| -%>[m
[32m +[m
[32m +      <div class="col-xs-12 col-sm-6 col-md-3">[m
[32m++=======[m
[32m+     <% @kitchens.each do |kitchen| %>[m
[32m+       <div class="col-xs-12 col-sm-6 col-md-4">[m
[32m++>>>>>>> 0b52788462b237bfd0e51f93f96c036442d57263[m
          <div class="kitchen-card" style="background-image: linear-gradient(rgba(0,0,0,0.5), rgba(0,0,0,0.4)), url('<%= cl_image_path kitchen.photo -%>')">[m
            <%= link_to '', kitchen_path(kitchen), class: "kitchen-link" %>[m
[32m+           <div class="avatar">[m
[32m+             <%= cl_image_tag(kitchen.user.photo, width: 150, height: 150, crop: :thumb, gravity: :face, class: "card-avatar") %> %>[m
[32m+             <!-- <img src="../images/logo.svg" alt="nothing"> -->[m
[32m+           </div>[m
            <div class="kitchen-title">[m
[31m-             <%= kitchen.title -%>[m
[32m+             <%= kitchen.title %>[m
            </div>[m
[32m +[m
            <div class="rating-stars">[m
              <ul class="list-inline">[m
                <% kitchen.rating.times do %>[m
[36m@@@ -17,13 -26,12 +33,18 @@@[m
              </ul>[m
            </div>[m
          </div>[m
[32m+         <%= "Max Cap: " + kitchen.capacity.to_s %>[m
[32m+           <br>[m
[32m+         <div class="thinner">[m
[32m+           <%= kitchen.amenities %>[m
[32m+         </div>[m
        </div>[m
[31m-     <% end -%>[m
[32m+     <% end %>[m
    </div>[m
[32m +  <div[m
[32m +    id="map"[m
[32m +    style="width: 100%;[m
[32m +    height: 600px;"[m
[32m +    data-markers="<%= @markers.to_json %>"[m
[32m +  ></div>[m
  </div>[m
[1mdiff --cc db/schema.rb[m
[1mindex 43304f6,41107df..0000000[m
[1m--- a/db/schema.rb[m
[1m+++ b/db/schema.rb[m
[36m@@@ -10,7 -10,7 +10,11 @@@[m
  #[m
  # It's strongly recommended that you check this file into your version control system.[m
  [m
[32m++<<<<<<< HEAD[m
[32m +ActiveRecord::Schema.define(version: 2018_08_16_164641) do[m
[32m++=======[m
[32m+ ActiveRecord::Schema.define(version: 2018_08_14_193323) do[m
[32m++>>>>>>> 0b52788462b237bfd0e51f93f96c036442d57263[m
  [m
    # These are extensions that must be enabled in order to support this database[m
    enable_extension "plpgsql"[m
[1mdiff --cc db/seeds.rb[m
[1mindex f177827,d2650f0..0000000[m
[1m--- a/db/seeds.rb[m
[1m+++ b/db/seeds.rb[m
[36m@@@ -1,10 -1,11 +1,18 @@@[m
  # This file should contain all the record creation needed to seed the database with its default values.[m
  # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).[m
[32m +#[m
[32m +# Examples:[m
[32m +#[m
[32m +#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])[m
[32m +#   Character.create(name: 'Luke', movie: movies.first)[m
[32m++# This file should contain all the record creation needed to seed the database with its default values.[m
[32m++# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).[m
[32m+ #[m
[32m+ # Examples:[m
[32m+ #[m
[32m+ #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])[m
[32m+ #   Character.create(name: 'Luke', movie: movies.first)[m
[32m+ Booking.destroy_all[m
  Kitchen.destroy_all[m
  User.destroy_all[m
  [m
