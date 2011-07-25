# coding: utf-8

helpers do
  include Rack::Utils
  alias_method :h, :escape_html
end

get '/styles.css' do
  scss :styles
end

get '/script.js' do
  coffee :script
end

get '/' do
  haml :index
end
