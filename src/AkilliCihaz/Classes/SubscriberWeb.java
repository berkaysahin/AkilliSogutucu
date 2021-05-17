package AkilliCihaz.Classes;

import AkilliCihaz.Interfaces.IObserver;

public class SubscriberWeb implements IObserver {
    @Override
    public void update(String msg) {
        System.out.println(msg);
    }
}
