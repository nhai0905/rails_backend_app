class ApplicationController < ActionController::Base
    require 'redis'
    $redis = Redis.new(host: "localhost")
    before_action :authenticate_user!
end
