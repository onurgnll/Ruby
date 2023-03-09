class Player

    attr_reader :isim , :hp ,:damage , :gold , :inventory , :defence
    attr_writer :damage , :defence , :gold

    def initialize(isim: "Yabancı", damage:, defence:, gold:, inventory:)
        @hp = 20
        @isim = isim
        @damage = damage
        @gold = gold
        @inventory = inventory
        @defence = defence
    end


    def bilgiler
        puts @isim + " İsimli oyuncunun bilgileri ->"
        puts "Can puanı -> " + @hp.to_s
        puts "Hasarı -> " + @damage.to_s
        puts "Parası -> " + @gold.to_s
    end

    def hasarekle(eklenecekhasar)
        @damage = @damage + eklenecekhasar
    end
    
    def hasarsil(silinecekhasar)
        @damage = @damage - silinecekhasar
    end

end