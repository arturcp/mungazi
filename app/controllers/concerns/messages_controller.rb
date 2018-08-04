# frozen_string_literal: true

class MessagesController < ApplicationController
  skip_before_action :verify_authenticity_token, only: :create

  def create
    Message.create!(safe_params)

    head :ok
  end

  private

  def safe_params
    params.permit(:name, :subject, :email, :content)
  end
end
