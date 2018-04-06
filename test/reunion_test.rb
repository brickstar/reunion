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
    expected = []
    actual = @r.activities

    assert_equal expected, actual
  end

  def test_it_can_add_activities
    @r.add_activity(@act_1)
    @r.add_activity(@act_2)

    expected = "Golf"
    actual = @r.activities[0].activity_name

    assert_equal expected, actual

    expected = "Tennis"
    actual = @r.activities[1].activity_name

    assert_equal expected, actual
  end

  def test_it_can_evaulate_reunion_cost
    @act_1.add_participant("Pearl", 200)
    @act_1.add_participant("Heidi", 250)
    @act_1.add_participant("Matt", 150)
    @r.add_activity(@act_1)

    @act_2.add_participant("Pearl", 200)
    @act_2.add_participant("Heidi", 250)
    @act_2.add_participant("Chris", 150)
    @act_2.add_participant("Lina", 200)
    @r.add_activity(@act_2)

    expected = 1400
    actual = @r.total_activities_cost

    assert_equal expected, actual
  end

  def test_it_can_create_offset_hash
    @act_1.add_participant("Pearl", 200)
    @act_1.add_participant("Heidi", 250)
    @act_1.add_participant("Matt", 150)
    @r.add_activity(@act_1)

    @act_2.add_participant("Pearl", 200)
    @act_2.add_participant("Heidi", 250)
    @act_2.add_participant("Chris", 150)
    @act_2.add_participant("Lina", 200)
    @r.add_activity(@act_2)

    expected = [ {"Pearl"=>0, "Heidi"=>50, "Matt"=>-50},
                 {"Pearl"=>0, "Heidi"=>50, "Chris"=>-50, "Lina"=>0} ]
    actual = @r.reunion_payment_offset

    assert_equal expected, actual
  end
end
