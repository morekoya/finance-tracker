require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :selenium, using: :chrome, screen_size: [1400, 1400]
  
  def sign_in_as(user, password, admin=false)
    post login_path, params: {session: {email: user.email, password: password}}
    if admin
      user.admin=true
    end
  end

end
