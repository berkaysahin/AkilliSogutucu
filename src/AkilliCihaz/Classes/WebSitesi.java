package AkilliCihaz.Classes;

import AkilliCihaz.Interfaces.IWebSitesi;

import java.util.Scanner;

public class WebSitesi implements IWebSitesi {

    @Override
    public void girisEkraniYazdir() {
        System.out.println("\n        Sogutucu Kontrol Sistemi        \n"
                          +"          Lutfen giris yapiniz          \n"
                          +"----------------------------------------\n");
    }

    @Override
    public String[] kullaniciGirisi() {
        Scanner input = new Scanner(System.in);
        String[] kullanici = new String[2];

        System.out.print("Kullanici Adi: ");
        kullanici[0] = input.nextLine();
        System.out.print("Sifre: ");
        kullanici[1] = input.nextLine();

        return kullanici;
    }

    @Override
    public void menuYazdir() {
        System.out.println("\n1 - Sogutucuyu Ac\n"
                         + "2 - Sogutucuyu Kapat\n"
                         + "3 - Sicaklik Goruntule\n"
                         + "4 - Cikis\n"
                         + "----------------------");
    }

    @Override
    public int yapilacakIslem() {
        Scanner input = new Scanner(System.in);
        System.out.print("Yapilacak Islem: ");
        return input.nextInt();
    }

    @Override
    public void ekranaYaz(String msg) {
        System.out.println(msg);
    }
}