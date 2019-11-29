module ApplicationHelper
  def user_avatar(user, size=80)
    if user.avatar.attached?
      user.avatar.variant(resize: "#{size}x#{size}!")
    else
      'placeholder-person.png'
    end
  end
end
