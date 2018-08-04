# frozen_string_literal: true

class Message < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :subject, presence: true
  validates :content, presence: true
end
