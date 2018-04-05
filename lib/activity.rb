class Activity
  attr_reader :activity_name, :participants
  def initialize(name)
    @activity_name = name
    @participants = Hash.new(0)
  end

  def add_participant(participant_name, paid)
    @participants[participant_name] = paid
  end
end
