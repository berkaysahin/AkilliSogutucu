package AkilliCihaz.Classes;

public class Durumlar {
    private String durum1;
    private String durum2;
    private String durum3;

    private Durumlar(DurumlarBuilder builder) {

        this.durum1 = builder.durum1;
        this.durum2 = builder.durum2;
        this.durum3 = builder.durum3;
    }

    public String getDurum1() {
        return durum1;
    }

    public void setDurum1(String durum) {
        this.durum1 = durum;
    }

    public String getDurum2() {
        return durum2;
    }

    public void setDurum2(String durum) {
        this.durum2 = durum;
    }

    public String getDurum3() {
        return durum3;
    }

    public void setDurum3(String durum) {
        this.durum3 = durum;
    }

    public static class DurumlarBuilder
    {
        private String durum1;
        private String durum2;
        private String durum3;

        public DurumlarBuilder durum1 (String durum) {
            this.durum1 = durum;
            return this;
        }

        public DurumlarBuilder durum2 (String durum) {
            this.durum2 = durum;
            return this;
        }

        public DurumlarBuilder durum3 (String durum) {
            this.durum3 = durum;
            return this;
        }

        public Durumlar build() {

            return new Durumlar(this);
        }

    }
}
