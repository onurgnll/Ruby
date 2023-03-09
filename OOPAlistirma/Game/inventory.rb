require_relative "items" 
require_relative "player"

class Inventory
    def initialize()
        @items = Array.new
        @playerusedsword = false
        @playerusedarmor = false
    end


    def ekle(obj)
        @items << obj
    end

    def lookinv
        puts "Envanterdeki Eşyalar -> "
        a = 1
        for items in @items do 
            puts a.to_s + ". - "  + items.isim
            a += 1
        end
        if @items.size >= 1
            puts "Seçmek istediğin ekipmanın numarasını yazabilirsin"
            secildi = gets.chomp.to_i
            puts ""
            if secildi >= 1 && secildi <= (@items.size+1)
                esya = @items[secildi-1]
                puts esya.isim + " Eşyası İle yapmak istediğini seç"
                puts "1. Giy (Giyili olan Eşya Silinir) - 2. Sil - 3. Sat - 4. Geri"
                
                islem = gets.chomp.to_i
                if islem == 4
                    break
                end
                if islem == 1
                    if esya.class == Sword
                        $player.damage = esya.damage
                    end
                    if esya.class == Armor
                        $player.defence = esya.defence
                    end
                end
            end
        end
    end

end