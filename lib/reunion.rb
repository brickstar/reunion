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
    offset = {}
    @activities.map do |activity|
      offset[activity.activity_name] = activity.calculate_payment_offset
    end
    offset
  end
end
