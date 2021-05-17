package AkilliCihaz.Classes;

import AkilliCihaz.Interfaces.IEyleyici;

public class Eyleyici implements IEyleyici{
    private boolean sogutucuDurumu;

    public Eyleyici(){
        sogutucuDurumu = false;
    }

    @Override
    public boolean sogutucuAc() {
        sogutucuDurumu = true;
        return sogutucuDurumu;
    }

    @Override
    public boolean sogutucuKapat() {
        sogutucuDurumu = false;
        return sogutucuDurumu;
    }

    @Override
    public boolean sogutucuAcikMi() {
        return sogutucuDurumu;
    }
}
