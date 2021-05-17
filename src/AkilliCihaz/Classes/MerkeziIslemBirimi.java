package AkilliCihaz.Classes;

import AkilliCihaz.Interfaces.*;

public class MerkeziIslemBirimi implements IMerkeziIslemBirimi {
    private IAgArayuzu agArayuzu;
    private IEyleyici eyleyici;
    private ISicaklikAlgilayici sicaklikAlgilayici;
    private IVeritabaniSurucusu veritabani;
    private Durumlar durum;
    private String suAnkiDurum;
    Publisher loglama;
    String[] kullanici;

    public MerkeziIslemBirimi(IAgArayuzu agArayuzu, IEyleyici eyleyici, ISicaklikAlgilayici sicaklikAlgilayici) {
        this.agArayuzu = agArayuzu;
        this.eyleyici = eyleyici;
        this.sicaklikAlgilayici = sicaklikAlgilayici;
        this.veritabani = new PostgreSQLVeritabani();

        SubscriberKullaniciGirisiDatabase sDatabase = new SubscriberKullaniciGirisiDatabase(veritabani);
        SubscriberWeb s = new SubscriberWeb();

        loglama = new Publisher();
        loglama.attach(sDatabase);
        loglama.attach(s);

        this.durum = new Durumlar.DurumlarBuilder()
                        .durum1("Bekleme")
                        .durum2("Algilama")
                        .durum3("Kapali")
                        .build();

        suAnkiDurum = durum.getDurum1();
    }

    @Override
    public void basla() {
        kullanici = agArayuzu.kullaniciGirisi();
        if(kullaniciDogrula(kullanici)){
            this.agArayuzu.ekranaGonder("\n");
            this.loglama.notify(kullanici[0] + " giris yapildi.");
            this.loglama.notify("Cihazin durumu: " + suAnkiDurum);

            int secilen;
            do{
                secilen = agArayuzu.menu();
                this.agArayuzu.ekranaGonder("\n");
                if(secilen == 1){ // SOGUTUCU AC
                    if(eyleyici.sogutucuAcikMi() == false) {
                        if(eyleyici.sogutucuAc()) {
                            this.loglama.notify("Sogutucu acildi.");
                        }
                    }else{
                        agArayuzu.ekranaGonder("Sogutucu zaten acik.");
                    }
                }else if(secilen == 2){ // SOGUTUCU KAPAT
                    if(eyleyici.sogutucuAcikMi()){
                        if (!eyleyici.sogutucuKapat()) {
                            this.loglama.notify("Sogutucu kapatildi.");
                        }
                    }
                    else agArayuzu.ekranaGonder("Sogutucu zaten kapali.");
                }else if(secilen == 3){ // SICAKLIK GORUNTULE
                    suAnkiDurum = this.durum.getDurum2();
                    this.loglama.notify("Cihazin durumu: " + suAnkiDurum);
                    this.loglama.notify("Olculen sicaklik: " + sicaklikAlgilayici.sicaklikOku());
                }else{
                    if(secilen != 4)
                        agArayuzu.ekranaGonder("Lutfen gecerli bir secenek giriniz.");
                    else {
                        this.loglama.notify(kullanici[0] + " cikis yapiliyor.");
                        suAnkiDurum = this.durum.getDurum3();
                        this.loglama.notify("Cihazin durumu: " + suAnkiDurum);
                    }
                }
            }while(secilen != 4); // Cikis
        }else{
            agArayuzu.ekranaGonder("Kullanici adı veya sifre yanlis.\nCikis yapiliyor.");
        }
    }

    @Override
    public float sicaklikVerisiniAl() {
        return sicaklikAlgilayici.sicaklikOku();
    }

    @Override
    public boolean kullaniciDogrula(String[] kullanici){
        return veritabani.kullaniciDogrula(kullanici);
    }
}
