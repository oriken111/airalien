module ApplicationHelper
  def avatar_url(user)
    if user.image
      user.image
    else
      "/assets/default.png"
    end
  end
end
