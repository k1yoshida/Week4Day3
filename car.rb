class Vehicle
end

class Car

  def initialize
    @num_wheels = 4
    @lights = false
    @signal = "Blinker is off"
    @speed = 0
  end

  def speed
    @speed
  end

  def accelerate
    @speed = @speed + 10
  end

  def brake
    if @speed <= 7
      @speed = 0
    else
      @speed = @speed - 7
    end
  end

  def num_wheels
    @num_wheels
  end

  def honk_horn
    @honk_horn = "Beep!"
  end

  def lights
    @lights
  end

  def signal_start
    @signal
  end

  def signal (direction = "off")
    if direction == "left"
      @signal = "Left"
    elsif direction == "right"
      @signal = "Right"
    elsif direction == "off"
      @signal = "Blinker is off"
    end
  end

  def turn_lights
    @lights = !@lights
  end
end

class Toyota < Car
  def initialize (model_year = 2000)
    @model_year = model_year
    @speed = 0
  end

  def model_year
    @model_year
  end

  def honk_toyota_horn
    @honk_toyota_horn = "Whoop!"
  end

  def speed
    @speed
  end

  def accelerate
    @speed = @speed + 7
  end

  def brake
    if @speed <= 5
      @speed = 0
    else
      @speed = @speed - 5
    end
  end
end

class Tata < Car
  def initialize (model_year = 2018)
    @model_year = model_year
    @speed = 0
  end

  def model_year
    @model_year
  end

  def honk_tata_horn
    @honk_tata_horn = "beep"
  end

  def speed
    @speed
  end

  def accelerate
    @speed = @speed + 2
  end

  def brake
    if @speed <= 1.25
      @speed = 0
    else
      @speed = @speed - 1.25
    end
  end
end

class Tesla < Car
  def initialize (model_year=2015)
    @model_year = model_year
    @speed = 0
  end

  def model_year
    @model_year
  end

  def honk_tesla_horn
    @honk_tesla_horn = "Beep-bee-bee-boop-bee-doo-weep"
  end

  def speed
    @speed
  end

  def accelerate
    @speed = @speed + 10
  end

  def brake
    if @speed <= 7
      @speed = 0
    else
      @speed = @speed - 7
    end
  end
end
