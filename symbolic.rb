h = { a: 1, b: 'hello' }
user = h.fetch(:user) { :no_any_user_given }
# user = h[:user]
p user.full_name
