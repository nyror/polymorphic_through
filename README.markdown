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


#### about the migration

```ruby
classCreateComments<ActiveRecord::Migration def change
create_table :comments do |t| t.text :body
t.integer :commentable t.string :commentable_type
end end
end
```

As you can see, there is a column called commentable_type, which stores the class name of associated object. The Migrations API actually gives you a one-line shortcut with the references method, which takes a polymorphic option:

```ruby
create_table:commentsdo|t|
t.text :body
t.references :commentable, polymorphic: true
end
```
