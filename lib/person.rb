class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account


    def initialize(name) 
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(i)
        @happiness = i
        @happiness = 10 if @happiness > 10
        @happiness = 0 if @happiness < 0
    end

    def hygiene=(n)
        @hygiene = n
        @hygiene = 10 if @hygiene > 10
        @hygiene = 0 if @hygiene < 0
    end

    def happy? 
        @happiness > 7? true : false
    end 

    def clean?
        @hygiene > 7? true : false
    end

    def get_paid(salary)
        self.bank_account = bank_account + salary 
        "all about the benjamins"
    end

    def take_bath
        self.hygiene = hygiene + 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness = happiness + 2
        self.hygiene = hygiene - 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        [friend, self].each {|phonecall| phonecall.happiness +=3}
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
end
