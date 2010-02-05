require 'rubygems'
require 'test/unit'

$LOAD_PATH.unshift File.join(File.dirname(__FILE__), '..', 'lib')

require 'uv'

class UltravioletTest < Test::Unit::TestCase
  def test_parses_blank
    assert_equal %(<pre class="mac_classic"></pre>), 
      Uv.parse('', 'xhtml', 'css')
  end

  def test_debugs
    assert_kind_of Textpow::DebugProcessor, Uv.debug('', 'css')
  end
end
