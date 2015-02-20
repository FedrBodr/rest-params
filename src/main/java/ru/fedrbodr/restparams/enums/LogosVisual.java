package ru.fedrbodr.restparams.enums;

/**
 * Created by Dmitry Fedorenko (fedrbodr@gmail.com) on 30/10/14.
 */
public enum LogosVisual {
    loveVisaul("loveVisaul", 1),
    fatVisaul("fatVisaul", 2),
    speakerVisaul("speakerVisaul", 3),
    jekaVisaul("jekaVisaul", 10);


    private String name;
    private Integer id;

    private LogosVisual(String name, Integer id) {
        this.name = name;
        this.id = id;
    }


    // API

    public static String[] names() {
        LogosVisual[] states = values();
        String[] names = new String[states.length];

        for (int i = 0; i < states.length; i++) {
            names[i] = states[i].name();
        }

        return names;
    }

    public Integer getId() {
        return id;
    }

    public void setId(final Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(final String name) {
        this.name = name;
    }

}
