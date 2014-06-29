class TestIdpsController < ApplicationController
  def new
    @test_idp = TestIdp.new
    render :new
  end
  
  def create
    render :new
  end
end