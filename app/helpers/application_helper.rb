module ApplicationHelper
  def avatar_url(user, options = {})
    if user
      size = options[:size] || 42
      mode = options[:mode] || :wavatar # :mm, :identicon, :monsterid, :wavatar, :retro
      gravatar_id = Digest::MD5::hexdigest(user.email).downcase
      "http://gravatar.com/avatar/#{gravatar_id}.png?d=#{mode}&s=#{size}"
    end
  end
end
