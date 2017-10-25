require 'rspec'
require_relative 'car'


# Story: As a programmer, I can make a vehicle.
# Hint: Test that Vehicle.new does not raise any errors.

describe "Vehicle" do
  it "has to be real" do
    expect{Vehicle.new}.to_not raise_error
  end
end


# Story: As a programmer, I can make a car.
# Hint: Test that creating an instance of the new class does not raise any errors.

describe "Car" do
  it "has to be real" do
    expect{Car.new}.to_not raise_error
  end
  it "has default number wheels = 4" do
    car = Car.new
    expect(car.num_wheels).to eq 4
  end
  it "can honk the horn" do
    car = Car.new
    expect(car.honk_horn).to eq "Beep!"
  end
  it "can turn the lights on and off" do
    car = Car.new
    expect(car.lights).to be false
    expect(car.turn_lights).to be true
    expect(car.turn_lights).to be false
  end
  # it "can determine if lights are on and off" do
  #   car = Car.new
  #   expect(car.lights).to be_kind_of(Boolean)
  # end
  it "can signal left or right and starts off" do
    car = Car.new
    expect(car.signal).to eq "Blinker is off"
    expect(car.signal("left")).to eq "Left"
    expect(car.signal("right")).to eq "Right"
    expect(car.signal("off")).to eq "Blinker is off"
  end
  it "can determine the speed of the car" do
    car = Car.new
    expect(car.speed).to be_a(Numeric)
    expect(car.accelerate).to be > 0
    expect(car.brake).to be >= 0
    expect(car.speed).to be_a(Numeric)
    expect(car.accelerate).to be > 0
    expect(car.brake).to be >= 0
    expect(car.speed).to be_a(Numeric)
    expect(car.accelerate).to be > 0
    expect(car.brake).to be >= 0
  end
end

# Story: As a programmer, I can tell how many wheels a car has; default is four.
# Hint: initialize the car to have four wheels, then create a method to return the number of wheels.

  #########See above

# Story: As a programmer, I can honk the horn.
# Hint: When I call honk_horn, I get a "BEEP!".

#########See above


# Story: As a programmer, I can make a Toyota car.
# Hint: Test that class Toyota which inherits from class Car can be created.

describe "Toyota" do
  it "creates a Toyota car" do
    expect{Toyota.new}.to_not raise_error
  end
  it "inherits from parent class" do
    my_toyota = Toyota.new
    expect(my_toyota.honk_horn).to eq "Beep!"
  end
  it "has a honk sound of whoop" do
    my_toyota = Toyota.new
    expect(my_toyota.honk_toyota_horn).to eq "Whoop!"
  end
  it "has a model year" do
    my_toyota = Toyota.new
    expect(my_toyota.model_year).to be_between(1900,2018).inclusive
  end
  it "can accelerate and brake" do
    my_toyota = Toyota.new
    expect(my_toyota.speed).to be_a(Numeric)
    expect(my_toyota.speed).to be 0
    expect{my_toyota.accelerate}.to change{my_toyota.speed}.by 7
    expect{my_toyota.brake}.to change{my_toyota.speed}.by -5
  end
end

# Story: As a programmer, I can honk the horn of a Toyota car which makes the sound "whoop".

#########See above

# Story: As a programmer, I can make a Tata car.

describe "Tata" do
  it "creates a Tata car" do
    expect{Tata.new}.to_not raise_error
  end
  it "inherits from parent class" do
    my_tata = Tata.new
    expect(my_tata.honk_horn).to eq "Beep!"
  end
  it "has a honk sound of beep" do
    my_tata = Tata.new
    expect(my_tata.honk_tata_horn).to eq "beep"
  end
  it "has a model year" do
    my_tata = Tata.new
    expect(my_tata.model_year).to be_between(1900,2018).inclusive
  end
  it "can accelerate and brake" do
    my_tata = Tata.new
    expect(my_tata.speed).to be_a(Numeric)
    expect(my_tata.speed).to be 0
    expect{my_tata.accelerate}.to change{my_tata.speed}.by 2
    expect{my_tata.brake}.to change{my_tata.speed}.by -1.25
  end
end

# Story: As a programmer, I can honk the horn of a Tata car - "beep".

  #####See Above

# Story: As a programmer, I can make a Tesla car.

describe "Tesla" do
  it "creates a Tesla car" do
    expect{Tesla.new}.to_not raise_error
  end
  it "inherits from parent class" do
    my_tesla = Tesla.new
    expect(my_tesla.honk_horn).to eq "Beep!"
  end
  it "has a honk sound of Beep-bee-bee-boop-bee-doo-weep" do
    my_tesla = Tesla.new
    expect(my_tesla.honk_tesla_horn).to eq "Beep-bee-bee-boop-bee-doo-weep"
  end
  it "has a model year" do
    my_tesla = Tesla.new
    expect(my_tesla.model_year).to be_between(1900,2018).inclusive
  end
  it "can accelerate and brake" do
    my_tesla = Tesla.new
    expect(my_tesla.speed).to be_a(Numeric)
    expect(my_tesla.speed).to be 0
    expect{my_tesla.accelerate}.to change{my_tesla.speed}.by 10
    expect{my_tesla.brake}.to change{my_tesla.speed}.by -7
    # expect(my_tesla.brake).to be >= 0
  end
  it "can retrieve information about the car" do
    my_tesla = Tesla.new
    expect(my_tesla).to be_an_instance_of(Tesla)
  end
  it "can retrieve all information about my_tesla" do
    my_tesla = Tesla.new
    expect(my_tesla.class.to_s).to eq "Tesla"
    expect(my_tesla.class.superclass.to_s).to eq "Car"
    expect(my_tesla.class.superclass.superclass.to_s).to eq "Vehicle"
    tesla_garage = [my_tesla]
    expect(tesla_garage.to_s).to include("2015")
  end
end
# Story: As a programmer, I can honk the horn of Tesla - "Beep-bee-bee-boop-bee-doo-weep".

  ########See Above

# Story: As a programmer, I can tell which model year a vehicle is from. Model years never change.
# Hint: Make model year part of the initialization.

  ########See Above

# Story: As a programmer, I can turn on and off the lights on a given Vehicle.
# Hint: Create method(s) to allow programmer to turn lights on and off. Which class are the methods in?

  ########See Above

# Story: As a programmer, I can determine if the lights are on or off. Lights start in the off position.

########See Above. (Not complete)

# Story: As a programmer, I can signal left and right. Turn signals starts off.

#########See above

# Story: As a programmer, I can determine the speed of a car. Speed starts at 0 mph.

#########See above

# Story: As a programmer, I can speed my Teslas up by 10 km/h per acceleration.

#########See above

# Story: As a programmer, I can slow my Teslas down by 7 km/h per braking.

#########See above

# Story: As a programmer, I can speed my Tatas up by 2 km/h per acceleration.

#########See above

# Story: As a programmer, I can slow my Tatas down by 1.25 km/h per braking.

#########See above

# Story: As a programmer, I can speed my Toyotas up by 7 km/h per acceleration.

#########See above

# Story: As a programmer, I can slow my Toyotas down by 5 km/h per braking.

#########See above

# Story: As a programmer, I can call upon a car to tell me all it's information.
# Hint: Implement to_s on one or more classes. You can call a super class's to_s with super.

#########See above


# Story: As a programmer, I can store and retrieve all of my cars from a garage.
# Hint: "Garage" is a noun, "store" and "retrieve" are verbs.
#
# Story: As a programmer, I can sort the cars in my garage based on model year.
#
# Story: As a programmer, I can sort the cars in my garage based on model.
# Hint: Sort based on class name.
#
# Story: As a programmer, I can sort the cars in my garage based on model and then year.
# Hint: Find out how the spaceship operator can help you with an array.
