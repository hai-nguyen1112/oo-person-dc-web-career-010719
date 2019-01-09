class Person
  def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
  end
  def name
    @name
  end
  def bank_account=(bank_account)
    @bank_account = bank_account
  end
  def bank_account
    @bank_account
  end
  def happiness=(happiness)
    @happiness = happiness
    if happiness > 10
      @happiness = 10
    elsif happiness < 0
      @happiness = 0
    end
  end
  def happiness
    @happiness
  end
  def hygiene=(hygiene)
    @hygiene = hygiene
    if hygiene > 10
      @hygiene = 10
    elsif hygiene < 0
      @hygiene = 0
    end
  end
  def hygiene
    @hygiene
  end
  def happy?
    if @happiness > 7
      return true
    else
      return false
    end
  end
  def clean?
    if @hygiene > 7
      return true
    else
      return false
    end
  end
  def get_paid(salary)
    self.bank_account += salary
    "all about the benjamins"
  end
  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end
  def work_out
    self.hygiene -= 3
    self.happiness += 2
    "♪ another one bites the dust ♫"
  end
  def call_friend(friend = Person.new)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end
  def start_conversation(friend = Person.new, topic)
    if topic == "politics"
      self.happiness -= 2
      friend.happiness -= 2
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      friend.happiness += 1
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end
end
