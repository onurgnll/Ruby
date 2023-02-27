require_relative 'kisi'
require_relative 'giris'
notlarfile = File.new("notlar.txt", "a+")
while ogrencigirisi? == true || ogretmengirisi? == true

    if ogrencigirisi? == true
        while true
            puts "Yapmak İstediğiniz işlemi seçin"
            puts "1.Notları Görüntüle"
            puts "2.Devamsızlık Görüntüle"
            islem = gets.chomp.to_i
            if islem == 3
                break
            end
            if islem == 1
                notlarfile.each_line do |index|
                    if index.split("=")[0] == $id
                        puts "#{index.split("=")[1]} = #{index.split("=")[2]}"
                    end
                end
            end
        end
    end

    if ogretmengirisi? == true
        while true
            puts "Yapmak İstediğiniz işlemi seçin"
            puts "1.Not Kaydet"
            puts "2.Devamsızlık ekle"
            islem = gets.chomp.to_i
            if islem == 3
                break
            end
            if islem == 1
                puts "Not ekleyeceğiniz Kişinin Kullanıcı Adını girin"
                noteklenecekkisi = gets.chomp
                $kullanicilar.each do |index|
                    if noteklenecekkisi == index.kullaniciadi
                        puts "Eklenecek dersi girin"
                        noteklenecekders = gets.chomp
                        puts "Eklenecek Notu girin"
                        notekleneceknot = gets.chomp
                        notlarfile.syswrite("#{index.kullaniciadi}=#{noteklenecekders}=#{notekleneceknot}\n")
                    else
                        puts "Böyle bir kullanıcı bulunamadı"
                    end
                end
            end
        end
    end

    break

end

puts "Geçersiz Kullanıcı Adı Veya Şifre"