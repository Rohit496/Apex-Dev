import { LightningElement, api } from "lwc";

export default class DesignDemo extends LightningElement {
  @api fullName;
  @api textColor;
  @api imgUrl;
  @api imgHeight;
  @api imgWidth;
  @api bgroundColor;

  get name() {
    return this.fullName;
  }

  get textStyle() {
    return `color: ${this.textColor}`;
  }

  get textBackground() {
    return `background-color: ${this.bgroundColor}`;
  }

  // get background image url
  get backgroundImg() {
    return `${this.imgUrl}`;
  }

  // get image height
  get imageHeight() {
    return `${this.imgHeight}`;
  }

  // get image width
  get imageWidth() {
    return `${this.imgWidth}`;
  }
}
