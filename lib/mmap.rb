# The Mmap class implement memory-mapped file objects
#
# Most of these methods have the same syntax than the methods of String
#
# === WARNING
# === The variables $' and $` are not available with gsub! and sub!
require 'mmap/mmap'

module Mmap
  include Comparable
  include Enumerable

  VERSION = Mmap::VERSION

  def clone # :nodoc:
    raise TypeError, "can't clone instance of #{self.class}"
  end

  def dup # :nodoc:
    raise TypeError, "can't dup instance of #{self.class}"
  end
end
