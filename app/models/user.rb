class User < ApplicationRecord
  has_secure_password
  #   we want our users to have passwords and we know we want to use bcrypt to hash them
end
