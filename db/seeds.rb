usr = User.new
usr.name = "Mike McCormick"
usr.email = "appleseed253@gmail.com"
usr.password = "foobar"
usr.activated = true
usr.activated_at = Time.zone.now
usr.save

#listing = Listing.new
#listing.user = usr
#listing.description = "this is a bike or something"
#listing.save