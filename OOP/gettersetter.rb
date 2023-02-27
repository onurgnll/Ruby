class Kisi

    def initialize(isim , soyisim , numara) #rubyde constructorlar initialize ile kurulur !
        @isim = isim
        @soyisim = soyisim
        @numara = numara
    end

    def bilgiGoster
        puts "İsim = #{@isim} \nSoyİsim = #{@soyisim} \nNumara = #{@numara} \n"
    end

#bunlar getterdir fonksiyon çağırması ile verileri elde ederiz
    def isim
        @isim
    end
    def soyisim
        @soyisim
    end
    def numara
        @numara
    end
#--------------------------------------------------

#bunlar setterimiz  
    def isim=(x)
        @isim = x
    end
    def soyisim=(x)
        @soyisim = x
    end
    def numara=(x)
        @numara = x
    end
#------------------------------------------------------
end


onur = Kisi.new("Onur", "Gönüllü" , "054520491")
onur.bilgiGoster
puts onur.soyisim#getteri çağırım

onur.soyisim = "Gönülsüz" #burada setter metodu çağırıldı
puts onur.soyisim


