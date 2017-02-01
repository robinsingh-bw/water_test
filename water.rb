class Water
  def get_water(data)
    from = to = 0
    water = []
    data.each_with_index do |val, idx|
      if idx == to
        from = to
        to = get_next_highest(data, from)
      end
      water << ([data[from], data[to]].min - val) if idx != from && idx != to
    end
    water.reduce :+
  end

  def get_next_highest(data, from)
    data.find_index.with_index do |val, idx|
      idx > from && val >= data[from]
    end || (data.size - 1)
  end
end
