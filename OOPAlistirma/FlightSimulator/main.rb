require_relative 'randomflightgenerator'

$passangers = Hash.new
$admins = Hash.new

$flights = []

$flights << 3.times {RandomFlight.new}

while true
    puts """Yapmak İstediğiniz İşlemi Seçiniz
    1. - Yolcu Giriş Yap
    2. - Yolcu Kaydol
    3. - Admin Giriş Yap
    4. - Admin Kayıt Ol
    """

    islem = gets.to_i

    if islem == 1
        puts "Tcnizi Giriniz"
        tc = gets.chomp.to_i
        puts "Soyisminizi giriniz"
        soyadson3 = gets.chomp

        $passangers.each_key {|index|
            if index == tc

                if $passangers[index] == soyadson3
                    puts "Başarılı Giriş"
                    sleep(3)

                    while true
                        
                        puts """Yapmak İstediğiniz İşlemi Seçiniz
                        1. - Uçuşları Görüntüle
                        """

                        islem = gets.to_i

                        if islem == 1 
                            puts $flights
                        end
                    end

                end
            else
                puts "Böyle bir kullanıcı bulunamadı"
            end

        }

    end

    if islem == 2
        
        puts "Tcnizi Giriniz"
        tc = gets.chomp.to_i
        puts "Soyisminizi giriniz"
        soyad = gets.chomp

        $passangers.store(tc , soyad)
        puts "Başarıyla Kayıt Oldunuz"

    end


end




