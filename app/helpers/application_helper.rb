module ApplicationHelper
#   def display_avatar_fb_nav
#     avatar_url = user.facebook_picture_url || "http://placehold.it/30x30"
#     image_tag avatar_url, class: "avatar dropdown-toggle", id: "navbar-wagon-menu", "data-toggle" => "dropdown"
#   end


  def image_tag_map_for engine, options = {}
    size = options[:size] || "600x300"
    pin_color = options[:pin_color] || "red"
    image_tag "https://maps.googleapis.com/maps/api/staticmap?center=#{engine.shop.address}&zoom=13&size=#{size}&maptype=roadmap&markers=color:#{pin_color}%7C#{engine.shop.address}&key=AIzaSyChOzXBuSMfBkfDtaSg4_WKCcjWOYDYk8Y"
  end
end
