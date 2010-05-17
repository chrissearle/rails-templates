load_template "http://github.com/chrissearle/rails-templates/raw/master/base.rb"

gem 'authlogic'
gem 'declarative_authorization'

generate :session,  "user_session"

generate :model, "user", "name:string", "login:string", "email:string", "crypted_password:string",
  "password_salt:string", "persistence_token:string", "single_access_token:string", "perishable_token:string", "login_count:integer",
  "failed_login_count:integer", "last_request_at:datetime", "current_login_at:datetime", "last_login_at:datetime", "current_login_ip:string",
  "last_login_ip:string"

generate :model, "role", "name:string"

rake "db:migrate"

git :add => ".", :commit => "-m 'add authentication'"