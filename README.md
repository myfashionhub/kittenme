Kitten Me
=====================

### How to use
- API URL: `http://kittenme.herokuapp.com/`

- Kitten me once
```
GET /random
```

- Get a kitten bomb
```
GET /bomb?count=3
```

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
