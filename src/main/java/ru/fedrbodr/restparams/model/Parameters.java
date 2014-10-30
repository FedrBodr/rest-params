package ru.fedrbodr.restparams.model;

import ru.fedrbodr.restparams.enums.VisualAlgorithm;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

/**
 * Created by Dmitry Fedorenko on 22.10.2014.
 */
@Table(name = "PARAMETERS")
public class Parameters implements Serializable {
    private static final long serialVersionUID = -2658619172398348912L;

    @Id
    private Long id;

    @Column(name = "color_hex")
    private String colorHex;

    @Column(name = "color_hex_2")
    private String colorHex2;

    @Column(name = "color_hex_3")
    private String colorHex3;

    @Column(name = "color_hex_20")
    private String colorHex20;

    @Column(name = "color_hex_21")
    private String colorHex21;

    @Column(name = "inner_boxes_size")
    private float innerBoxesSize;

    @Column(name = "around_boxes_size")
    private float aroundBoxesSize;

    @Column(name = "draw_count_for_reload")
    private int drawCountForReload;

    @Column(name = "render_algorithm_type")
    private VisualAlgorithm renderAlgorithmType;

    public Parameters() {
    }

    public Parameters(String colorHex, String colorHex2, String colorHex3, String colorHex20, String colorHex21,
                      float innerBoxesSize, float aroundBoxesSize, int drawCountForReload, VisualAlgorithm renderAlgorithmType) {
        /* TODO change names for mor semantic */
        this.colorHex = colorHex;
        this.colorHex2 = colorHex2;
        this.colorHex3 = colorHex3;
        this.colorHex20 = colorHex20;
        this.colorHex21 = colorHex21;
        this.innerBoxesSize = innerBoxesSize;
        this.aroundBoxesSize = aroundBoxesSize;
        this.drawCountForReload = drawCountForReload;
        this.renderAlgorithmType = renderAlgorithmType;
    }

    @Override
    public String toString() {
        return "Parameters{" +
                "colorHex='" + colorHex + '\'' +
                ", colorHex2='" + colorHex2 + '\'' +
                ", colorHex3='" + colorHex3 + '\'' +
                ", colorHex20='" + colorHex20 + '\'' +
                ", colorHex21='" + colorHex21 + '\'' +
                ", innerBoxesSize=" + innerBoxesSize +
                ", aroundBoxesSize=" + aroundBoxesSize +
                ", drawCountForReload=" + drawCountForReload +
                ", renderAlgorithmType=" + renderAlgorithmType +
                '}';
    }

    public String getColorHex() {
        return colorHex;
    }

    public String getColorHex2() {
        return colorHex2;
    }

    public String getColorHex3() {
        return colorHex3;
    }

    public void setColorHex3(String colorHex3) {
        this.colorHex3 = colorHex3;
    }

    public void setColorHex(String colorHex) {
        this.colorHex = colorHex;
    }

    public void setColorHex2(String colorHex2) {
        this.colorHex2 = colorHex2;
    }

    public String getColorHex20() {
        return colorHex20;
    }

    public void setColorHex20(String colorHex20) {
        this.colorHex20 = colorHex20;
    }

    public String getColorHex21() {
        return colorHex21;
    }

    public void setColorHex21(String colorHex21) {
        this.colorHex21 = colorHex21;
    }

    public float getInnerBoxesSize() {
        return innerBoxesSize;
    }

    public void setInnerBoxesSize(float innerBoxesSize) {
        this.innerBoxesSize = innerBoxesSize;
    }

    public float getAroundBoxesSize() {
        return aroundBoxesSize;
    }

    public void setAroundBoxesSize(float aroundBoxesSize) {
        this.aroundBoxesSize = aroundBoxesSize;
    }

    public int getDrawCountForReload() {
        return drawCountForReload;
    }

    public void setDrawCountForReload(int drawCountForReload) {
        this.drawCountForReload = drawCountForReload;
    }

    public VisualAlgorithm getRenderAlgorithmType() {
        return renderAlgorithmType;
    }

    public void setRenderAlgorithmType(VisualAlgorithm renderAlgorithmType) {
        this.renderAlgorithmType = renderAlgorithmType;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
}
