gem "minitest"
require "minitest/autorun"
require "nested_ostruct"

class TestNestedOstruct < Minitest::Test
  def test_sanity
    skip "write tests or Zen Spider will kneecap you"
  end

  def test_call_to_hash
    hash_in_array = [{:totally => 'awesome!'}]

    nest_2        = OpenStruct.new
    nest_2.three  = 'awesome'
    nest_2.four   = 'rad'
    nest_2.array  = [5,[6,7,[8,9]]]

    nest_1        = OpenStruct.new
    nest_1.one    = 'awesome'
    nest_1.two    = 'rad'
    nest_1.array  = hash_in_array
    nest_1.hash   = nest_2

    obj           = OpenStruct.new
    obj.array     = [1,2,3,4]
    obj.hash      = nest_1
    obj.name      = :rick_hunter

    act = NestedOstruct.to_hash(obj)
    exp = Hash
    assert_kind_of exp, act

    exp = {:array =>[1, 2, 3, 4],
           :hash =>
            {:one   => "awesome",
             :two   => "rad",
             :array => [{:totally => "awesome!"}],
             :hash  => {:three => "awesome", :four => "rad", :array => [5, [6, 7, [8, 9]]]}},
             :name  => :rick_hunter}
    assert_equal exp, act
  end
end
