class Activity
  attr_reader :activity_name, :participants
  def initialize(name)
    @activity_name = name
    @participants = Hash.new(0)
  end

  def add_participant(participant_name, paid)
    @participants[participant_name] = paid
  end

  def evaluate_cost
    @participants.values.sum.to_f
  end

  def split_total_cost
    total_cost = evaluate_cost
    total_cost / @participants.keys.length
  end
end
