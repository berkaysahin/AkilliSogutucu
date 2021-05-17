package AkilliCihaz.Classes;

import AkilliCihaz.Interfaces.IObserver;
import AkilliCihaz.Interfaces.IVeritabaniSurucusu;

import java.sql.*;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;

public class PostgreSQLVeritabani implements IVeritabaniSurucusu {
    private String host = "jdbc:postgresql://localhost:5432/g191210302_nyat";
    private String kullanici = "postgres";
    private String sifre = "123456";

    @Override
    public boolean kullaniciDogrula(String[] kullaniciBilgileri) {
        Connection conn = null;
        try {
            conn = DriverManager.getConnection(host, kullanici, sifre);
            if (conn == null)
                System.out.println("Baglanti yapilamadi!");
        } catch (SQLException e) {
            System.out.println("Hata: " + e);
        }

        String sql = "SELECT COUNT(*) AS sayi FROM "
                + "(SELECT * FROM public.kullanicilar "
                + "WHERE \"kullaniciadi\" = '" + kullaniciBilgileri[0]
                + "' AND \"sifre\" = '" + kullaniciBilgileri[1] + "') AS KS";

        try{
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);

            conn.close();
            if(rs.next()){
                return rs.getInt("sayi") != 0;
            } else return false;

        } catch (SQLException ex) {
            System.out.println("Veritabani islemi yapilirken bir sorun olustu: " + ex);
        }

        return false;
    }

    @Override
    public boolean setLog(String log) {
        Connection conn = null;
        try {
            conn = DriverManager.getConnection(host, kullanici, sifre);
            if (conn == null)
                System.out.println("Baglanti yapilamadi!");
        } catch (SQLException e) {
            System.out.println("Hata: " + e);
        }

        LocalDateTime myDateObj = LocalDateTime.now();
        DateTimeFormatter myFormatObj = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        String formattedDate = myDateObj.format(myFormatObj);

        String sql = "INSERT INTO public.loglar "
                + "( \"tarih\", \"icerik\") VALUES ( '" + formattedDate + "', '"+ log +"')";

        try{
            Statement stmt = conn.createStatement();
            int rs = stmt.executeUpdate(sql);

            conn.close();

            return rs == 1;
        } catch (SQLException ex) {
            System.out.println("Database baglantisi gerceklestirilemiyor  : " + ex);
        }

        return false;
    }
}
