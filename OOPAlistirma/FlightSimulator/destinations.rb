class Destinations

    private
    $destinations = ["Adana Havalimanı",
        "Ankara Esenboğa Havalimanı",
        "Alanya Gazipaşa Havalimanı",
        "Antalya Havalimanı",
        "Balıkesir Kocaseyit Havalimanı",
        "Bursa Yenişehir Havalimanı",
        "Denizli Çardak Havalimanı",
        "Diyarbakır Havalimanı",
        "Elazığ Havalimanı",
        "Erzurum Havalimanı",
        "Eskişehir Hasan Polatkan Havalimanı",
        "Gaziantep Havalimanı",
        "Hatay Havalimanı",
        "Isparta Süleyman Demirel Havalimanı",
        "İstanbul Yeni Havalimanı",
        "İstanbul Sabiha Gökçen Havalimanı",
        "İzmir Adnan Menderes Havalimanı",
        "Kars Harakani Havalimanı",
        "Kayseri Havalimanı",
        "Kocaeli Cengiz Topel Havalimanı",
        "Konya Havalimanı",
        "Kütahya Zafer Havalimanı",
        "Malatya Havalimanı",
        "Muğla Dalaman Havalimanı",
        "Muğla Milas-Bodrum Havalimanı",
        "Nevşehir Kapadokya Havalimanı",
        "Ordu Giresun Havalimanı",
        "Samsun Çarşamba Havalimanı",
        "Sinop Havalimanı",
        "Sivas Nuri Demirağ Havalimanı",
        "Şanlıurfa GAP Havalimanı",
        "Tekirdağ Çorlu Havalimanı",
        "Trabzon Havalimanı",
        "Van Ferit Melen Havalimanı",
        "Zonguldak Çaycuma Havalimanı"]

    public
    attr_reader :departureairport , :landingairport
    def initialize
        @departureairport = $destinations[rand(0..33)]
        @landingairport = $destinations[rand(0..33)]

    end

end
