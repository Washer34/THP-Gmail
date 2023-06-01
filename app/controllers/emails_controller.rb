class EmailsController < ApplicationController
  require 'faker'

  def new

  end

  def index
    @emails = Email.all
  end

  def create
    @email = Email.create(
      object: Faker::Books::Lovecraft.word,
      body: Faker::Books::Lovecraft.paragraph
    )
    redirect_to emails_path
  end


  def show
    @emails = Email.all
    @email = Email.find(params[:id])
    @email.update(read: true)
  end

  def destroy
    @emails = Email.all
    @email = Email.find(params[:id])
    @email.destroy
    redirect_to emails_path
  end

end