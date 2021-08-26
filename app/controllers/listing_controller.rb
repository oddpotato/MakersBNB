class ListingController < ApplicationController

get (/listings) { erb :'listings/index' }

def index
    @date = Date.today
    @answer = "Hi how are ya!?"
end
end

