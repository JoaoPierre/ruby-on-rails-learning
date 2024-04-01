class SampleController < ApplicationController
  def hello
    render json: {message: "Ola esse é apenas um teste!"}
  end
end
