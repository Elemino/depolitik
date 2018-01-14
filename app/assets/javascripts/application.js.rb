require 'opal'
require 'opal_ujs'
require 'turbolinks'
require_tree '.'


puts "Hello world!"
pp hello: :world
require 'console'
$console.log %w[Hello world!]


require 'native'
$$.alert "Hello world!"


require 'opal-jquery'
Document.ready? do
  Element.find('body').html = '<h1>Hello world!</h1>'
end


$$[:document].addEventListener(:DOMContentLoaded, -> {
  $$[:document].querySelector('body')[:innerHTML] = '<h1>Hello world!</h1>'
})
