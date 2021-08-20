module BlogsHelper
  def gravatar_helper user
    size = "?s=200"
    default = "?d=robohash"
    hash = Digest::MD5.hexdigest(user.email.downcase)
    image_tag "https://www.gravatar.com/avatar/#{hash}#{size}#{default}", width: 80
  end
end
