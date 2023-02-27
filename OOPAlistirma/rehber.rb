class Kisi
    attr_reader :isim , :soyisim , :numara

    def initialize(isim, soyisim, numara)
        @isim = isim
        @soyisim = soyisim
        @numara = numara
    end


end

rehber = Array.new
rehbersize = 0

while true

    puts """Yapmak istediğiniz İşlemi Seçiniz
    1. Kişileri Görüntüle
    2. Kişi Ekle
    3. Kişi sil
    4. Çık """
    islem = gets.to_i

    if islem == 1
        rehber.each do |index|
            puts "---------------------"
            puts index.isim
            puts index.soyisim
            puts index.numara
        end
    elsif islem == 2
        isim = gets.chomp
        soyisim = gets.chomp
        numara = gets.chomp
        rehber << Kisi.new(isim,soyisim,numara)
        rehbersize = rehbersize + 1
    elsif islem == 3
        puts "Silinecek kişinin numarasını girin"
        silinecek = gets.chomp
        sayac = 0
        rehber.each do |index| 
            sayac = sayac + 1
            if index.numara == silinecek
                rehber.delete_at(sayac-1)
                puts "Kişi Silindi"
            else
                puts "Telefon numarası olan böyle bir kişi bulunmadı"
            end
        
        end

    elsif islem == 4
        break
    end
    

end

