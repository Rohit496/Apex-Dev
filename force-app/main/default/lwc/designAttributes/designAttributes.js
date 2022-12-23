import { LightningElement, api } from "lwc";

export default class DesignAttributes extends LightningElement {
  @api firstName;
  @api textColor;
  @api backgroundTextColor;
  @api imgUrl;
  @api imgHeight;
  @api imgWidth;

  get textStyle() {
    return `color: ${this.textColor}`;
  }

  get backgroundStyle() {
    return `background-color: ${this.backgroundTextColor}`;
  }

  get imgStyle() {
    return `${this.imgUrl}`;
  }

  get imgHeightStyle() {
    return `${this.imgHeight}`;
  }
  get imgWidthStyle() {
    return `${this.imgWidth}`;
  }
}