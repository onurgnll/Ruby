class Kisi
    attr_reader :kullaniciadi , :sifre , :isim , :soyisim

    def initialize(kullaniciadi, sifre,isim,soyisim)
        @kullaniciadi = kullaniciadi
        @sifre = sifre
        @isim = isim
        @soyisim = soyisim
    end
end