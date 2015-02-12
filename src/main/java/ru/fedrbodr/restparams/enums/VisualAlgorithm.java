package ru.fedrbodr.restparams.enums;

/**
 * Created by Dmitry Fedorenko (fedrbodr@gmail.com) on 30/10/14.
 */
public enum VisualAlgorithm {
    doubleAtomicSprocketFixedColorWithBack("DoubleAtomic Sprocket Fixed Color WithB", 1),
    doubleAtomicSprocketDynamicRedByFreqColor("DoubleAtomic SprocketDynamic RedByFreqColor", 2),
    doubleAtomicSprocketDynamicGrinByFreqColor("DoubleAtomic SprocketDynamic GrinByFreqColor", 3),
    doubleAtomicSprocketDynamicBlueByFreqColor("doubleAtomic SprocketDynamic BlueByFreqColor", 4),
    beeBack("Bee Back", 5),
    beeBack_doubleAtomicSprocketFixedColorWithoutBack("BeeBack DoubleAtomicSprocket_FixedColorWithoutBack", 6),
    beeBack_dotsVolumeVisual("BeeBack_DotsVolumeVisual", 7),
    dotsVolumeBack("DotsVolumeBack", 8),
    daveBeesVisuals_doubleAtomicSprocketFixedColorWithoutBack("DaveBeesVisuals_DoubleAtomicSprocketFixedColorWithoutBack", 9),
    squareVasarelyVisual("Square VasarelyVisual", 10),
    CTA2Visual("CTA2 Visual", 11),
    FoolShuVisual("CTA2 Visual", 13);

    private String name;
    private Integer id;

    private VisualAlgorithm(String name, Integer id) {
        this.name = name;
        this.id = id;
    }


    // API

    public static String[] names() {
        VisualAlgorithm[] states = values();
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
