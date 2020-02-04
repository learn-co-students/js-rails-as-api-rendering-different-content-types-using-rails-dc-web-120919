class BirdsController < ApplicationController
  def index
    # @birds = Bird.all
    # render 'birds/index.html.erb'
    #reminder: implicit render 'birds/index.html.erb' even without above line

    # render plain: "Hello #{@birds[3].name}"
    # this also works as plain text, note the rails s loading feedback: rendering text template 

    # @birds.each do |bird|
    #   render plain: "Hello #{@bird}"
    # end 
    #cannot do the above because render can only be called once per action 

    # render json: "Remember that JSON is just string data, this will show up anyway"
    # render json: {hash: ["of", "arrays", {nested: ["hello I'm", "nested"]}]} #also shows up, both hashes, nested, etc. 
    # render json: @birds #surprise, this works 
    # render json: {birds: @birds, messages: ['Hello birds', 'Goodbye birds']}


    birds = Bird.all
    render json: birds; # still works, just need local variables now. 
  end

end
