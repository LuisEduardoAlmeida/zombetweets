Twitter in 15 minutesBasics

● Ruby (version 1.9.3)
  ○ Linux=> by RVM (http://beginrescueend.com/)
  ○ Mac=> by RVM (http://beginrescueend.com/)
  ○ Windows => by Ruby installer (http://rubyinstaller.org/)
  
● Bundler (version 1.0.21)
  ○ gem install bundler
  
● Add to your ~/.gemrc file:
  ○ gem: --no-ri --no-rdoc
  
● Rails (version 3.2)
  ○ gem install railsGetting database created
  
rails new twitter --database postgresql
cd twitter
git init
git add . && git commit -v -a
Add to gemfile:
gem 'therubyracer'
createuser twitter -d -S -R -U postgres
rake db:createBuilding twitter app
gem "haml-rails"
rails generate scaffold tweet body:text user_id:integer
Add to config/routes.rb
root :to => 'tweets#index'
remove public/index.htmlGetting app running
rake db:migrate
gem install unicorn
unicorn
Tataaa!!! => http://localhost:8080Let's add some style
htm2haml application.html.erb application.haml
rm application.html.erb
add #main div
sass-convert scaffold.css.scss application.sass
rm scaffold.css.scss
body
background-color: #c0deed
#main
width: 400px
margin: 50px autoGetting users on board
gem install devise
rails generate devise:install
rails generate devise user
rake db:migrate
Add to you controller files:
before_filter :authenticate_user!, :except => :indexPersonal tweets
tweet.rb
belongs_to :user
user.rb
has_many :tweets
Clean up tweet form from app/views/tweets
Add tweeter to controller.
@tweet = current_user.tweets.new(params[:tweet])
Add order scope
default_scope :order => 'created_at desc'Allow users to sign in
rr
#account
- if current_user.present?
= current_user.email + ' | '
= link_to 'Sign out', destroy_user_session_path, :method
=> :delete
- else
= link_to 'Sign up', new_user_registration_path
= link_to 'Sign in', new_user_session_path
#account
text-align: right
background-color: #252525
margin: -10px
padding: 10px
aGetting app deployed
RAILS_ENV=production rake db:create
RAILS_ENV=production rake db:migrate
RAILS_ENV=production rake assets:precompile
heroku create
git push heroku master
heroku rake db:migrate
TATAAA!! => on heroku server:-)
