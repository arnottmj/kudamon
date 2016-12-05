### Kudamon

# Setup

This is a game run in irb. It has been written in ruby with testing using rspec. To install the required gems run the `bundle` command. 

ALl of the ruby files in the lib directory need to be required. In order to do this navigate to the lib directory and run `require ./setup.rb`

# Configure the game

This app requires their to be a game master. 

First, the game master must spawn kudamon, specifying a location. THey must then add this to a list of global kudamon. For example,

```ruby
chikapu = Chikapu.new([0,0])
rockdude = Rockdude.new([1,0])
all_kudamon = AllKudamon.new
all_kudamon.add(chikapu)
all_kudamon.add(rockdude)
```

They must then create trainers, specififying their initial location and names:

```ruby
trainer_1 = Trainer.new('trainer_1', [0,1])
trainer_2 = Trainer.new('trainer_2', [2,1])
```

At present, the virtual map is the whole of the 2D plane.

THe game master must then instantiate the `FindNearby` class using the instance of AllKudamon that has already been created:

```ruby
find_nearby = FindNearby.new(all_kudamon)
```

# Playing the game

The interface for a player is their instance of the `Trainer` class and the instance of the `FindNearby` class.

The player can move position:

```ruby
trainer_1.position = [1,1]
```

They can then search for kudamon:

```ruby
find_nearby.search(trainer_1)
```

This will return an array of all kudamon that are located on the exact position of the trainer or 1 unit in all directions.

Its worth mentioning that there are no constraints on how many trainers and/or kudamon can be on the same position. 

Once a trainer has located a nearby kudamon they can capture it:

```ruby
trainer_1.capture(chikapu)
```

The kudamon is now marked as captured and can no longer be captued by anyone else. It is also added to the collection of the trainer who can view their collection at any time:

```ruby
trainer_1.collection
```

# Limitations

- Currently there are no gaurd controls for arguments being passed. Fore example, it would be possible to pass a string as a position for kudamon/trainers.
- Currently, it is possible to directly access the `captured` instance variable of kudamon. This means that trainers could unwillingly/maliciously mark a kudamon as not captured, allowing it to be recpatuured whilst still existing in a trainers collecion. More time would have allowed for a refactoring of the code to create a new `Capturing` class which queries whether a kudamon is captured by searching if it exists in a trainers collection.
- Similar to above, trainers have access to the `collection` instance variable.

# Into the Future

- spawn new kudamon once one has been captured at a location. Base the spawn number on how many players are nearby.
- introduce the ability for kudamon/players to battle.



