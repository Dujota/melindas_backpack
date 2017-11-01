class Backpack
  def initialize(attributes)
    @attributes = attributes # a hash containing day_of_week and weather keys
    @items = []
    prepare
  end

  def items
    @items
  end

  def day_of_week
    @attributes[:day_of_week]
  end

  def weather_today
    @attributes[:weather]
  end

  def prepare
    what_is_weather_today
    pack_shoes_for_gym_day
    pack_lunch_weekdays
  end

  def pack_lunch_weekdays
    if day_of_week != 'saturday' && day_of_week != 'sunday'
      @items << 'packed lunch'
    elsif false
      # Used to bring snacks on weekend trips, but now I just buy 'em
      @items << 'snacks'
    end
  end

  def pack_shoes_for_gym_day
    if day_of_week == 'monday' || day_of_week == 'thursday'
      @items << 'gym shoes'
    end
  end

  def what_is_weather_today
    if weather_today == 'rainy'
      @items << 'pants'
      @items << 'shirt'
      @items << 'umbrella'
    elsif weather_today == 'cold'
      @items << 'pants'
      @items << 'shirt'
      @items << 'jacket'
    else
      @items << 'pants'
      @items << 'shirt'
    end
  end

  # Prints a summary packing list for Melinda's backpack
  def print_summary
    summary = []
    summary << "Melinda, here's your packing list!"
    summary << "Day: #{@attributes[:day_of_week]}, Weather: #{@attributes[:weather]}"
    summary << ""

    @items.each do |item|
      summary << "- #{item}"
    end
    summary.join("\n")
  end

end
