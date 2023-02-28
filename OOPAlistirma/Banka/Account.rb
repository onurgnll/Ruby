class Account
    attr_accessor :ID , :balance , :type , :benefitt

    system_date = Time.new

    def initialize(type)
        @ID = rand(1000..9999)
        @balance = 0
        @hesapolusturmatarihi = Time.now
        @type = type
        @benefitt = 0
        
    end

    def getBalance
        @balance
    end
    def getID
        @ID
    end

    def deposit(cash)

        @balance += cash

    end

    def withdraw(cash)
        if @balance >= cash
            balance -= cash
            puts "#{cash} TL Para Çekildi"
        else
            puts "Hesabınızda #{cash} kadar bakiye yok!"
        end

    end

    def system_date
        @@system_date
    end

    
    def benefit
        if @balance >= 1000
            if @type == "ShortTerm"
                @benefit = @balance * 17 / 100/365
            end
            if @type == "LongTerm"
                @benefit = @balance * 24 / 100/365
            end
            if @type == "Special"
                @benefit = @balance * 30 / 100/365
            end
            
            if @type == "Currency"
                0
            end
        end
    end

end


