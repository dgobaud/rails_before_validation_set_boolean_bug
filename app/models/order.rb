class Order < ActiveRecord::Base
  validates_inclusion_of :reminder_sent, :in => [true, false]

  before_validation(:on => :update) {
    self.reminder_sent = false
  }
end
