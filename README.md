# openweather

TODO: Write a description here

## Installation


Add this to your application's `shard.yml`:

```yaml
dependencies:
  openweather:
    github: lucasocon/openweather.cr
```


## Usage


```crystal
require "openweather"
```

### Get Weather

```crystal
Openweather::Client.new.get("london").sys.country
# => GB
```

Data available here:
[http://openweathermap.org/current#current_JSON](http://openweathermap.org/current#current_JSON)



## Contributing

1. Fork it ( https://github.com/[your-github-name]/openweather/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [lucasocon](https://github.com/lucasocon) Lucas Ocon - creator, maintainer
