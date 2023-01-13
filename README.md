# Order By
Adds order functionality to your ActiveRecord models so that your controllers have shared interface for accepting column/direction params.

## Installation
Add this line to your application's Gemfile:

`gem 'order_by'`

And then execute:

`$ bundle`

## Usage
Include `Orderable` concern to the model you want to act as orderable:

```ruby
class Posts
  include Orderable
end
```

Now you can use it in your controller like this:
```ruby
class PostsController
  def index
    @posts = Post.order_by(params[:sort_column], params[:sort_direction])
  end
end
```

## Thanks

I was inspired by [this gist](https://gist.github.com/Darep/4626622) and thought it would be useful as a gem
