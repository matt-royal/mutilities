class GuardedHash < Hash
  def initialize(hash={})
    super() do |_, key|
      raise KeyError, "There is no value for key #{key.inspect}"
    end
    update(hash)
  end

  def default=(value)
    raise NotImplementedError
  end

  def default_proc=(value)
    raise NotImplementedError
  end
end

class ::Hash
  def guarded
    GuardedHash.new(self)
  end

  def guard!
    self.default_proc = ->(_,key) do
      raise KeyError, "There is no value for key #{key.inspect}"
    end
    self
  end
end
