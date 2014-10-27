package ru.fedrbodr.restparams.model;

import java.io.Serializable;

/**
 * Created by Dmitry Fedorenko on 22.10.2014.
 */
public class Params implements Serializable {
	private static final long serialVersionUID = -2658619172398348912L;

	private String colorHex;
	private String colorHex2;
	private String colorHex3;

	private String colorHex20;
	private String colorHex21;

	private float innerBoxesSize;
	private float aroundBoxesSize;
	private int drawCountForReload;
	/* TODO add enum*/
	private int renderAlgorithmType;


    @Override
    public String toString() {
        return "Params{" +
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

	public int getRenderAlgorithmType() {
		return renderAlgorithmType;
	}

	public void setRenderAlgorithmType(int renderAlgorithmType) {
		this.renderAlgorithmType = renderAlgorithmType;
	}
}
