module Kernel

  private

  def using(resource)
    begin
      yield
    ensure
      resource.dispose
    end
  end
  
end
