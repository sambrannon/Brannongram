module ApplicationHelper
  def profile_avatar_select(user)
    return image_tag user.avatar.url(:medium), class: 'profile__avatar' if user.avatar.exists?
    image_tag 'default-avatar.png', class: 'profile__avatar'
  end
end
