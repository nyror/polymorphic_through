polymorphic_through
===================

an example to show how has_many :through relation with polymorphic

### Generate migration

```ruby
rails generate migration AddDetailsToProducts price:decimal{5,2} supplier:references{polymorphic}

rails g model Comment name content commentable:references{polymorphic}
```

![screen shot 2013-10-29 at 2 51 29 pm](https://f.cloud.github.com/assets/83296/1431187/4e930df2-40cb-11e3-9496-9f9b50664ed7.png)


![screen shot 2013-10-29 at 2 51 51 pm](https://f.cloud.github.com/assets/83296/1431189/5326f766-40cb-11e3-8ced-8eb6b6b02c45.png)

