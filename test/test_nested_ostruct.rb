gem "minitest"
require "minitest/autorun"
require "nested_ostruct"

class TestNestedOstruct < Minitest::Test
  def test_sanity
    skip "write tests or Zen Spider will kneecap you"
  end

  def setup
    hash_in_array = [{:totally => 'awesome!'}]

    nest_2        = OpenStruct.new
    nest_2.three  = 'awesome'
    nest_2.four   = 'beer'
    nest_2.array  = [5,[6,7,[8,9]]]

    nest_1        = OpenStruct.new
    nest_1.one    = 'awesome'
    nest_1.two    = 'rad'
    nest_1.array  = hash_in_array
    nest_1.hash   = nest_2

    @obj           = OpenStruct.new
    @obj.array     = [1,2,3,4]
    @obj.hash      = nest_1
    @obj.name      = :rick_hunter

    @hash_1 = {
      :array =>[1, 2, 3, 4],
      :hash => {
        :one   => "awesome",
        :two   => "rad",
        :array => [{:totally => "awesome!"}],
        :hash  => {
          :three => "awesome",
          :four => "beer",
          :array => [5, [6, 7, [8, 9]]]
        }
      },
      :name  => :rick_hunter
    }
  end

  def test_parse
    act = NestedOstruct.parse(@obj)
    exp = Hash
    assert_kind_of exp, act

    assert_equal @hash_1, act
  end

  def test_new
    act = NestedOstruct.new(@hash_1)
    exp = NestedOstruct
    assert_kind_of exp, act

    assert_equal [1,2,3,4], act.array
    assert_kind_of NestedOstruct, act.hash
    assert_equal "awesome", act.hash.one
    assert_equal "rad", act.hash.two
    assert_equal [{:totally => "awesome!"}], act.hash.array
    assert_kind_of NestedOstruct, act.hash.hash
    assert_equal "beer", act.hash.hash.four
    assert_kind_of Array, act.hash.hash.array
  end

  def test_to_h
    assert_equal @hash_1, NestedOstruct.parse(@obj).to_h
  end
end
