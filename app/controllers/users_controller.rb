require 'open-uri'
require 'json'
class UsersController < ApplicationController
  def show
    @today = JSON.parse open('http://worldcup.sfg.io/matches/today').read
    @tomorrow = JSON.parse open('http://worldcup.sfg.io/matches/tomorrow').read
  end
end
