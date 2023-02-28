require_relative 'Account'


class Bank

    $accounts = Array.new

    def getDate
        date = Time.new
        puts "#{date.day}/#{date.month}/#{date.year}"
    end

    def deposit(acc ,cash)
        $accounts.each do |index|
            if index.ID == acc
                index.balance += cash
            end
        end
    end

    def withdraw(acc , cash)
        $accounts.each do |index|
            if index.ID == acc
                if index.balance >= cash
                    index.balance -= cash
                end
            end
        end
    end

    def getAccount
        $accounts.each do |index|
            puts "-----------------"
            puts "Kullanıcı ID = #{index.ID}"
            puts "Bakiye = #{index.balance}"
            puts "Türü = #{index.type}"
            index.benefit
            puts "Günlük Edilen Kar #{index.benefitt}"
        end
    end

    def create_s_id_balance
        a = Account.new("ShortTerm")
        puts a.getID.to_s + " ID'sinde Hesap Oluşturuldu"
        $accounts << a
    end
    def create_l_id_balance
        a = Account.new("LongTerm")
        puts a.getID.to_s + " ID'sinde Hesap Oluşturuldu"
        $accounts << a
    end
    def create_o_id_balance
        a = Account.new("Special")
        puts a.getID.to_s + " ID'sinde Hesap Oluşturuldu"
        $accounts << a
    end
    def create_c_id_balance
        a = Account.new("Current")
        puts a.getID.to_s + " ID'sinde Hesap Oluşturuldu"
        $accounts << a
    end

    def showids
        @accounts.each do |index|
            puts "Kullanıcı ID = #{index.ID}"
        end
    end

end
