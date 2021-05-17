package AkilliCihaz.Classes;

import AkilliCihaz.Interfaces.ISicaklikAlgilayici;

import java.util.Random;

public class SicaklikAlgilayici implements ISicaklikAlgilayici{
    private float sicaklik;

    public SicaklikAlgilayici(){
        sicaklik = sicaklikOku();
    }

    @Override
    public float sicaklikOku() {
        Random rand = new Random();
        sicaklik = rand.nextInt(50);
        return sicaklik;
    }

    @Override
    public float getSonSicaklik() {
        return sicaklik;
    }
}
