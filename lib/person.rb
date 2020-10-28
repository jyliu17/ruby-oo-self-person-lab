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
        @happiness = happiness.to_i
        @hygiene = hygiene.to_i
    end

    def happiness=(happiness)
        
        @happiness = happiness
        @happiness = 10 if @happiness > 10
        @happiness = 0 if @happiness <0
       
        # if 
        # @happiness > 10
        # @happiness = 10
        # elsif
        # @happiness < 0
        # @happiness = 0
        # else
        # @happiness = happiness
        # end
    end

    def hygiene=(hygiene)
        @hygiene = hygiene
        @hygiene = 10 if @hygiene > 10
        @hygiene = 0 if @hygiene <0
    end

    def happy?
        self.happiness > 7 ? true : false
    end
    
    def clean?
        self.hygiene > 7 ? true : false
    end
        
    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness +=2
        self.hygiene -= 3
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)

        if 
            topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2

        return "blah blah partisan blah lobbyist"

        elsif
             topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            
        return "blah blah sun blah rain"

        else

        return "blah blah blah blah blah"
        
        end
    end

end


# if x <=> min < 0, x = min; 
#     if x <=> max > 0 , x = max
#     else x