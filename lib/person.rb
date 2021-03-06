# your code goes here
class Person
    def initialize (name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name

   def happiness=(num)
    @happiness = num
        if (@happiness > 10)
            @happiness = 10
        elsif (@happiness < 0)
            @happiness = 0
        end
    end

    def hygiene= (num)
        @hygiene = num
            if (@hygiene > 10)
                @hygiene = 10
            elsif (@hygiene < 0)
                @hygiene = 0
            end
    end

    def happy?
        @happiness > 7
    end

    def clean?
        @hygiene > 7
    end

    def get_paid (salary)
        @bank_account += salary
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

    def call_friend(person)
        self.happiness += 3
        person.happiness += 3
        if (self.name == "Penelope")
            "Hi Felix! It's Penelope. How are you?"
        elsif (self.name == "Felix")
            "Hi Penelope! It's Felix. How are you?"
        end
    end

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness -= 2
            person.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif (topic == "weather")
            self.happiness += 1
            person.happiness +=1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end