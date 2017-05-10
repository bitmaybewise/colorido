# Colorido

A gem that provides color names and the rgb and hexadecimal codes.

    gem install colorido

## How to use

```ruby
colorido = Colorido.new

colorido.colors # returns all colors as structs

# color sample
#<struct Struct::Color codename="bright_green", name="\"Bright Green\"", hex="#6f0", rgb=#<struct Struct::RGB red="102", green="255", blue="0">>

colorido.names # returns all color names

colorido.codenames # returns all color codenames

colorido.pick_random # pick a random color
```
