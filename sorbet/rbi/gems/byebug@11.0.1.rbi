# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   tapioca generate

# typed: true

module Byebug
  def self.attach; end
  def self.spawn(host = _, port = _); end
end

module Kernel
  def byebug; end
  def debugger; end
  def remote_byebug(host = _, port = _); end
end

Kernel::RUBYGEMS_ACTIVATION_MONITOR = T.let(T.unsafe(nil), Monitor)
