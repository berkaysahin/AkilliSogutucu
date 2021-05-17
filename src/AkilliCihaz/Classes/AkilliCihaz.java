package AkilliCihaz.Classes;

import AkilliCihaz.Interfaces.*;

public class AkilliCihaz implements IAkilliCihaz {
    IAgArayuzu agArayuzu;
    IEyleyici eyleyici;
    ISicaklikAlgilayici sicaklikAlgilayici;
    IMerkeziIslemBirimi merkeziIslemBirimi;

    AkilliCihaz(){
        eyleyici = new Eyleyici();
        sicaklikAlgilayici = new SicaklikAlgilayici();
        agArayuzu = new AgArayuzu();
        merkeziIslemBirimi = new MerkeziIslemBirimi(agArayuzu, eyleyici, sicaklikAlgilayici);

        basla();
    }

    @Override
    public void basla() {
        merkeziIslemBirimi.basla();
    }
}
