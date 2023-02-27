
class Kisi

    def initialize(isim , soyisim , numara) #rubyde constructorlar initialize ile kurulur !
        @isim = isim
        @soyisim = soyisim
        @numara = numara
    end

    def bilgiGoster
        puts "İsim = #{@isim} \nSoyİsim = #{@soyisim} \nNumara = #{@numara} \n"
    end

end

onur = Kisi.new("Onur", "Gönüllü" , "054520491")
onur.bilgiGoster

#classtan sonra yazılan her şey main sınıftır