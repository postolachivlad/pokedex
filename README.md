# Finiata Coding Task

### Context

The goal of this task is to get a glimpse of your code style, how you think
through a problem and a general level of your experience. You should aim to
spend about 2 hours working on this.

Clone this repository and push the results to your own github accout. When
you're finished, please send us a link to the repo.

### Instructions

Using the [pokemon API](https://pokeapi.co/docs/v2#pokemon), when a user visits
the index page grab a random pokemon and display the following three pieces of data:

* Name
* Image
* API Url to get more information about this pokemon

For the image, you can use the following URL once you've pulled the name:

> https://img.pokemondb.net/artwork/large/xxx.jpg

For bonus points instead of showing the URL, you can instead show some stats
about the current pokemon, such as height, weight, species, abilities, etc. This
is optional and just a suggestion of a direction to go if you finish early.

### Getting Started

1. Run `bundle` to install default gemset
2. Run the server with `shotgun config.ru` and open `localhost:9393` in your
   browser

### Tests

A simple sanity check test exists in spec/app_spec.rb. You can run the full test
suite (all the tests within the spec directory) with `rake` from your terminal.

There's no pressure to add more tests, especially for the sinatra app, although
as you add library files you are encouraged to test them. This is not mandatory
and just considered a bonus.
