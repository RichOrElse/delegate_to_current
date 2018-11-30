require "delegate_to_current/version"
require "active_support"

class DelegateToCurrent
  delegate :current, to: :@context
  delegate_missing_to :current

  def initialize(context)
    @context = context
  end

  define_singleton_method(:[], &method(:new))
end
