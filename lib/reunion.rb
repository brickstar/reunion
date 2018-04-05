require "./lib/activity"

class Reunion
  attr_reader :location, :activities
  def initialize(location)
    @location = location
    @activities = Hash.new(0)
  end

  def add_activity(activity)
    @activities[activity.activity_name] = activity.total_cost
  end

  def total_activities_cost
    @activities.values.sum
  end
end
