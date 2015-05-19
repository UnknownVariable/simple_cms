class DemoController < ApplicationController

	layout false   #suppres the uso of the layout for the moment

  def index
  	#render('demo/hello')    # long syn: render(:template => 'demo/hello')
  end

  def hello
  	#render('index')    # since we are in the DemoController it will chech inside 'demo' directory
    @array = [1, 2, 3, 4, 5]
    @id = params['id']
    @page = params[:page]
  end
  
  def other_hello
  	redirect_to(:controller => 'demo', :action => 'index')   #controller is use if a different controller is needed 
  end

  def lynda
  	redirect_to("http://lynda.com")
  end
end
