module ApplicationHelper
  def profile_avatar_select(user)
    return image_tag user.avatar.url(:medium), id: 'image-preview', class: 'avatar' if user.avatar.exists?
    image_tag 'default-avatar.png', id: 'image-preview', class: 'avatar'
  end
end
