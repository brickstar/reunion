class Activity
  attr_reader :activity_name, :participants
  def initialize(name)
    @activity_name = name
    @participants = Hash.new(0)
  end

  def add_participant(participant_name, paid)
    @participants[participant_name] = paid
  end

  def total_cost
    @participants.values.sum
  end

  def split_total_cost
    total_cost / @participants.length
  end

  def calculate_payment_offset
    offset = {}
    @participants.keys.map do |name|
      offset[name] = @participants[name] - split_total_cost
    end
    offset
  end
end
