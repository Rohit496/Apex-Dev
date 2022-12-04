import { LightningElement, api } from "lwc";
export default class ImageResizer extends LightningElement {
  @api imageSrc;
  @api imageAlt;

  handleZoomIn() {
    this.dispatchEvent(new CustomEvent("zoomin"));
  }
  handleZoomOut() {
    this.dispatchEvent(new CustomEvent("zoomout"));
  }
  handleRotate() {
    this.dispatchEvent(new CustomEvent("rotate"));
  }
}
