require_relative 'kisi'

    puts "Kullanıcı adı giriniz ->"
    $id = gets.chomp
    puts "Şifre giriniz ->"
    $pw = gets.chomp



kullanicilarfile = File.open("kisiler.txt","r")
adminlerfile = File.open("adminler.txt","r")

$kullanicilar = []
$adminler = []

adminlerfile.each_line do |index|
    splited = index.split("=")
    $adminler << Kisi.new(splited[0],splited[1],splited[2],splited[3])
    
end
kullanicilarfile.each_line do |index|
    splited = index.split("=")
    $kullanicilar << Kisi.new(splited[0],splited[1],splited[2],splited[3])
end

def ogrencigirisi?
    $kullanicilar.each do |index|
        if index.kullaniciadi == $id && index.sifre == $pw
            return true
        end
    end
end

def ogretmengirisi?
    $adminler.each do |index|
        if index.kullaniciadi == $id && index.sifre == $pw
            return true
        end
    end
end
