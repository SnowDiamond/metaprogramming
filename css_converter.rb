require 'sass'

css = Sass::Engine.for_file('style.scss', {}).render

puts css
