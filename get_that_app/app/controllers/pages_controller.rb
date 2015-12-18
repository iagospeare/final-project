class PagesController < ApplicationController
	def show
    #when we are passing along primary keys
    # we can pull the specific user id

   

    @result = Quiz.last
    @factor = @result.intensity
 


    render template: "pages/about"

  end
end
