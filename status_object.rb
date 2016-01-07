class StatusObject

  class << self
    def success
      new(:success)
    end

    def failded(error)
      new(:failed, error)
    end
  end

  def initialize(status, error = nil)
    @status = status
    @error = error
  end
end

success = StatusObject.success
p success
