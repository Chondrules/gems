require 'rubygems'
require 'mechanize'

agent = Mechanize.new
page = agent.get(ARGV.first)

page.links.each do |link|
  puts link.text
end

myform = page.form('f')
myform.q = 'brant was here'
pp myform

page = agent.submit(myform, myform.buttons.first)
pp page
