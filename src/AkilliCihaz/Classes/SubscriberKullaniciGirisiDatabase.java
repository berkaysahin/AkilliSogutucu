package AkilliCihaz.Classes;

import AkilliCihaz.Interfaces.IObserver;
import AkilliCihaz.Interfaces.IVeritabaniSurucusu;

public class SubscriberKullaniciGirisiDatabase implements IObserver {
    IVeritabaniSurucusu veritabani;

    SubscriberKullaniciGirisiDatabase(IVeritabaniSurucusu vt){
        veritabani = vt;
    }

    @Override
    public void update(String msg) {
        veritabani.setLog(msg);
    }
}
