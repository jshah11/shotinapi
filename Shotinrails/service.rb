require 'sinatra'
require 'mongo'

include Mongo

enable :sessions

get '/id' do
  if session[:id].nil?  then
    session[:id] = BSON::ObjectId.new.to_s
  end
  session[:id]
end