
class Item
    attr_reader :isim , :price

    def initialize(isim: , price:)
        @isim = isim
        @price = price
    end

    
end



class Sword < Item
    attr_reader :damage
    def initialize(isim: , price: , damage:)
        super(isim: , price:)
        @damage = damage
    end
    def use
        $player.damage = @damage
    end
    
end

class Armor < Item
    attr_reader :defence
    def initialize(isim: , price: , defence:)
        super(isim: , price:)
        @defence= defence
    end
    def use
        $player.defence = @defence
    end
end

class Accesory < Item
    attr_reader :damage
    def initialize(isim: , price: , type: , damage:)
        super(isim: , price:)
        @type = type
        @damage = damage
    end
    def use
        $player.damage = @damage
    end
end

$allitems = Array.new

$baslangickilic = Sword.new(isim: "Başlangıç Kılıcı" ,price: 0 , damage: 1)
$baslangiczirh = Armor.new(isim: "Başlangıç Zırhı" , price: 0, defence: 1)

$allitems << $baslangickilic
$allitems << $baslangiczirh