require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
    test "valid signup information" do
      get signup_path
      name     = "Example User"
      email    = "user@example.com"
      password = "password"
      assert_difference 'User.count', 1 do
        post_via_redirect users_path, user: { name: name,
                                              email: email,
                                              password:password,
                                              password_confirmation: password }
        end
        assert_template 'users/show'
<<<<<<< HEAD
        assert_select 'div<CSS id for error explanation>'
        assert_select 'div<CSS class for field with error>'
=======
        assert_select 'div#<CSS id for error explanation>'
        assert_select 'div.<CSS class for field with error>'
>>>>>>> a586930a5b42223d90d9c2eecc0ed99a1c5a613d
        assert is_logged_in?
      end
    end
