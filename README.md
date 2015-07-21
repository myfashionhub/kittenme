Kitten Me
=====================

### Getting started
```bash
$ rake db:create_migration NAME=create_kittens
# Create an ActiveRecord migration in ./db/migrate

$ rake db:migrate

$ rake db:seed
# Execute db/seeds.rb 
```

### Deploy to heroku
```
$ heroku addons:create heroku-postgresql
$ heroku run rake db:migrate
$ heroku run rake db:seed
```
