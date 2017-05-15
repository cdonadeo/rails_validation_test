# What's This?

This is a stock Rails application designed to demonstrate a single case where validation failure handling does not match the documentation.  

# How To Reproduce The Issue

Don't forget to set up the app:

```bash
bundle install
rake db:migrate
```

In IRB:

```ruby
Thing.create
Group.create
group = Group.first
group.update({'thing_ids' => ['1']})
```
The above will cause an `ActiveRecord::RecordInvalid` exception to be raised when `update` is called.  According to the documentation, it should return false.  This only occurs if the `ThingGroupMembership` fails to validate; the method correctly returns `false` if the `Group` doesn't pass validation instead.

# How this app was created:

1. `mkdir rails_validation_test`
1. `cd rails_validation_test`
1. `echo '2.4.1' > .ruby_version`
1. `echo '.gems' > .rbenv_gemsets`
1. `gem install bundler rails:4.2.8`
1. `rails new .`
1. Create migration in `db/migrate/20170515180342_make_entities.rb`
1. Create model in `app/models/group.rb`
1. Create model in `app/models/thing.rb`
1. Create model in `app/thing_group_memberships.rb`
1. `rake db:migrate`
