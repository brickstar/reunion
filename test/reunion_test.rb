require 'minitest'
require 'minitest/test'
require 'minitest/autorun'
require './lib/reunion'

class ReunionTest < Minitest::Test
  def setup
    @r = Reunion.new("Denver")
    @act_1 = Activity.new("Golf")
    @act_2 = Activity.new("Tennis")
  end

  def test_it_exists
    assert_instance_of Reunion, @r
  end

  def test_it_has_a_location
    assert_equal "Denver", @r.location
  end

  def test_it_has_activities_and_starts_empty
    expected = Hash.new(0)
    actual = @r.activities

    assert_equal expected, actual
  end

  def test_it_can_add_activities
    @act_1.add_participant("Pearl", 200)
    @act_1.add_participant("Heidi", 250)
    @act_1.add_participant("Matt", 150)
    @r.add_activity(@act_1)

    expected = {"Golf" => 600}
    actual = @r.activities

    assert_equal expected, actual
  end

  def test_it_can_evaulate_reunion_cost
    @act_1.add_participant("Pearl", 200)
    @act_1.add_participant("Heidi", 250)
    @act_1.add_participant("Matt", 150)
    @r.add_activity(@act_1)

    @act_2.add_participant("John", 200)
    @act_2.add_participant("Jerri", 250)
    @act_2.add_participant("Chris", 150)
    @act_2.add_participant("Lina", 200)
    @r.add_activity(@act_2)

    expected = 1400
    actual = @r.total_activities_cost

    assert_equal expected, actual
  end

  def test_it_can_calculate_payment_offset

  end
end
