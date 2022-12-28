# your code goes here
require 'pry'

class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness=(value)
        if value < 0
            @happiness = 0
        elsif value > 10
            @happiness = 10
        else 
            @happiness = value
        end
    end

    def hygiene=(value)
        if value < 0
            @hygiene = 0
        elsif value > 10
            @hygiene = 10
        else
            @hygiene = value
        end
    end

    def happy?
        @happiness > 7? true : false
    end

    def clean?
        @hygiene > 7? true : false
    end

    def get_paid(amount)
        @bank_account += amount
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene=(@hygiene + 4)
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene=(@hygiene - 3)
        self.happiness=(@happiness + 2)
        return '♪ another one bites the dust ♫'
    end

    def call_friend(person)
        self.happiness=(@happiness+3)
        person.happiness=(person.happiness+3)
        return "Hi #{person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        case topic
        when "politics"
            self.happiness=(@happiness-2)
            person.happiness=(person.happiness-2)
            return 'blah blah partisan blah lobbyist'
        when "weather"
            self.happiness=(@happiness+1)
            person.happiness=(person.happiness+1)
            return 'blah blah sun blah rain'
        else
            return 'blah blah blah blah blah'
        end
    end
end
#binding.pry