require "./lib/activity"

class Reunion
  attr_reader :location, :activities, :participants
  def initialize(location)
    @location = location
    @activities = []
    @participants = []
  end

  def add_activity(activity)
    @activities << activity
  end

  def total_activities_cost
    @activities.map do |activity|
      activity.total_cost
    end.sum
  end

  def reunion_payment_offset
    @activities.map do |activity|
      activity.calculate_payment_offset
    end
  end
end
