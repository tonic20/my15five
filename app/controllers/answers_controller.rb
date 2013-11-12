class AnswersController < ApplicationController
  before_filter :authenticate_user!
end