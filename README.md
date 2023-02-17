# README

## First Setup

```
bundle install

rake db:setup
rake db:migrate
```

Then in a rails console:

```
# rails c
require 'active_record/fixtures'
ActiveRecord::FixtureSet.create_fixtures(Rails.root.join('test', 'fixtures'), 'zones')
ActiveRecord::FixtureSet.create_fixtures(Rails.root.join('test', 'fixtures'), 'climates')

```
To get some initial values.
Now start the server:
```
rails s
```

Then, you could head to the two main urls:
- [List of zones](http://127.0.0.1:3000)
You can click on links to move on the map and see the distribution changes
- [List of climates](http://127.0.0.1:3000/climates) to add more outside the main bounds. If you add a very different one outside bounds, moving on the map will _slowly_ fade the zone tiles from one to the other.