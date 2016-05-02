require 'test_helper'

class ArtistTest < ActiveSupport::TestCase

  test "display name for The Class should be Clash, The" do
    assert_equal "Clash, The", artists(:the_clash).display_name
  end

  test "display name for an artist with no name should be an empty stirng" do
    assert_equal "", Artist.new.display_name
  end

  test "display name for an artist with a two letter name should ??" do
    assert_equal "YY", artists(:yy).display_name
  end


end
