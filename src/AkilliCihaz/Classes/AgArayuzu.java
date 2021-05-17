package AkilliCihaz.Classes;

import AkilliCihaz.Interfaces.IAgArayuzu;
import AkilliCihaz.Interfaces.IWebSitesi;

public class AgArayuzu implements IAgArayuzu {
    IWebSitesi webSitesi;
    String[] kullanici;

    public AgArayuzu(){
        webSitesi = new WebSitesi();
        kullanici = null;
    }

    @Override
    public String[] kullaniciGirisi() {
        webSitesi.girisEkraniYazdir();
        kullanici = webSitesi.kullaniciGirisi();
        return kullanici;
    }

    @Override
    public int menu() {
        webSitesi.menuYazdir();
        return webSitesi.yapilacakIslem();
    }
    @Override
    public void ekranaGonder(String msg) {
        webSitesi.ekranaYaz(msg);
    }
}
