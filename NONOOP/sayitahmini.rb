

tahminedileceksayi = rand(10)

$tahmin

$tahmin = gets.chomp.to_i

while $tahmin != tahminedileceksayi
    if $tahmin < tahminedileceksayi
        puts "tahminedileceksayi > tahmin ettiğin sayı"
        $tahmin = gets.chomp.to_i
    else
        puts "tahminedileceksayi < tahmin ettiğin sayı"
        $tahmin = gets.chomp.to_i

    end
end

p "tebriks bildin"
