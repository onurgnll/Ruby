class Kisi

    attr_reader :isim , :soyisim , :numara #getter yerine geçen attr_reader deyimi
    attr_accessor :isim , :soyisim , :numara # hem getter hem setter
    attr_writer :isim , :soyisim , :numara #setter metodları hızlı tanımlayıccı

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
puts onur.soyisim # getter metodumuz çağırıldı