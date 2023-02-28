require_relative 'Bank'

bank = Bank.new

while true
    puts """    1. Create_S_ID_balance: Kısa vadeli hesap açar. (hesap no=ID, başlangıç parası = balance)
    2. Create_L_ID_balance: Uzun vadeli hesap açar. (hesap no=ID, başlangıç parası = balance)
    3. Create_O_ID_balance: Özel hesap açar. (hesap no=ID, başlangıç parası = balance)
    4. Create_C_ID_balance: Cari hesap açar. (hesap no=ID, başlangıç parası = balance)
    5. Increase_ID_cash: ID’ye ait hesaba “cash” kadar para ekler.
    6. Decrease_ID_cash: ID’ye ait hesaptan “cash” kadar para çeker.
    7. Set_dd_mm_yy: Sistemin şu anki tarihini düzenler.
    8. ShowAccount: Tüm hesapların ID’sini ve yaptığı son 5 işlemi gösterir.
    9. ShowIDs: Sistemdeki tüm hesap numaralarını listeler.
    10. Sortition: Özel hesaplar için kura çeker ve sonucu gösterir.
    11. Çıkış
    """

    islem = gets.chomp.to_i
    if islem == 1
        bank.create_s_id_balance
    elsif islem ==2
        bank.create_l_id_balance
    elsif islem ==3
        bank.create_o_id_balance
    elsif islem ==4
        bank.create_c_id_balance
    elsif islem ==5
        puts "Para Eklenecek Hesap Idsini Giriniz"
        eklid = gets.chomp.to_i
        puts "Eklenecek miktarı girin"
        ekl = gets.chomp.to_i
        bank.deposit(eklid,ekl)
    elsif islem ==6
        puts "Para Çekilecek Hesap Idsini Giriniz"
        eklid = gets.chomp.to_i
        puts "Silinecek miktarı girin"
        ekl = gets.chomp.to_i
        bank.withdraw(eklid,ekl)
    elsif islem ==7
    elsif islem ==8
        bank.getAccount
    elsif islem ==9
        bank.showids
    elsif islem ==10

    else
        break
    end
end


