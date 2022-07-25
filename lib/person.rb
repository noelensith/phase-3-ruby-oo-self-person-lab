# your code goes here
class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name, bank_account=25, happiness=8, hygiene=8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness=(value)
        @happiness = if value > 10
            10
        elsif value < 0
            0
        else
            value
        end
    end

    def hygiene=(value)
        @hygiene = if value > 10
            10
        elsif value < 0
            0
        else
            value
        end
    end

    def clean?
        self.hygiene > 7
    end

    def happy?
        self.happiness > 7
    end

    def get_paid(amount)
        self.bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(instance)
        self.happiness += 3
        instance.happiness += 3    
        "Hi #{instance.name}! It's #{self.name}. How are you?" 
    end

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness -= 2
            person.happiness -= 2
            'blah blah partisan blah lobbyist'
        elsif topic == "weather"
            self.happiness +=1
            person.happiness +=1
            "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
        end
    end
end