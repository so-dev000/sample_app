require 'test_helper'

class RelationshipTest < ActiveSupport::TestCase
  def setup
    @relationships = Relationship.new(follower_id: users(:michael).id,
                                      followed_id: users(:archer).id)
  end
  test 'should be valid' do
    assert @relationships.valid?
  end

  test 'should require a follower_id' do
    @relationships.follower_id = nil
    assert_not @relationships.valid?
  end

  test 'should require a followed_id' do
    @relationships.followed_id = nil
    assert_not @relationships.valid?
  end
end
