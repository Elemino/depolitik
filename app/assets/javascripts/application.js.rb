require 'turbolinks'

puts "Hello world!"
hello::world
require 'console'
$console.log %w[Hello world!]


require 'native'
$$.alert "Hello world!"




$$[:document].addEventListener(:DOMContentLoaded, -> {
  $$[:document].querySelector('body')[:innerHTML] = '<h1>Hello world!</h1>'
})
