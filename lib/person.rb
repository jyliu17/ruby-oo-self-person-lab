# your code goes here
#- First you need to create a person class that is initialized with a name that cannot be changed.
#- Each instance of class `Person`should be able to remember their name
#- Each instance of  class `Person` should start with $25 in their bank accounts
# - Each instance of  class `Person` should start with eight happiness points
# - Each instance of  class `Person` should start with eight hygiene points
# - The happiness and hygiene points should be able to change, however the maximum and minimum points for both happiness and hygiene should be 10 and  0 respectively
# - The amount in the bank account should also be able to change, though it has no max or min.

class Person

    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene 

    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene              
    end
    def happiness=(happiness)
        if
        happiness > 10
        happiness = 10
        elsif 
        happiness < 0
        happiness = 0
        end
        @happiness = happiness
    end
    def hygiene=(hygiene)
        if
        hygiene > 10
        hygiene = 10
        elsif 
        hygiene < 0
        hygiene = 0
        end
        @hygiene = hygiene
    end

    def happy?
        self.happiness > 7 ? true : false
    end

    def clean?
        self.hygiene > 7 ? true : false
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

    def call_friend(name)
        self.happiness += 3
        name.happiness += 3
        "Hi #{name.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(name,topic)
        
        if topic == "politics"
            self.happiness -= 2
            name.happiness -= 2
            "blah blah partisan blah lobbyist"
                
        elsif topic == "weather"
            self.happiness += 1
            name.happiness += 1
            "blah blah sun blah rain"

        else 
            "blah blah blah blah blah"
        end
    end
end