polymorphic_through
===================

an example to show how has_many :through relation with polymorphic

### Generate migration

```ruby
rails generate migration AddDetailsToProducts price:decimal{5,2} supplier:references{polymorphic}

rails g model Comment name content commentable:references{polymorphic}
```
