require_relative "player"
require_relative "inventory"
require_relative "items"


#system ("cls")
puts "Oyuna hoşgeldiniz"
#sleep(2)
puts""
puts "Başlamak için Karakter Oluşturun"


puts "Oluşturulacak Oyuncunun ismi"

$player = Player.new(isim: gets.chomp, damage: 0 , gold: 0 , inventory: Inventory.new , defence: 0)
$player.inventory.ekle($baslangickilic)
$player.inventory.ekle($baslangiczirh)

puts $player.isim + " Adlı Karakter oluşturuldu Oyuna başlanıyor"
puts ""

puts $player.bilgiler
while true

    puts "Envanterini Görüntülemek için 1 e bas"
    puts "bilgiler için 2"

    islem = gets.chomp
    if islem == "1"
        $player.inventory.lookinv
    end
    if islem == "2"
        $player.bilgiler
    end
    if islem == "3"
        break
    end
end



#sleep(2)
#system("cls")







