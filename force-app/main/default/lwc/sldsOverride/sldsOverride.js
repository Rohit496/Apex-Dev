import { LightningElement } from "lwc";
import { loadStyle } from "lightning/platformResourceLoader";
import customCSS from "@salesforce/resourceUrl/customCSS";
export default class SldsOverride extends LightningElement {
  connectedCallback() {
    loadStyle(this, customCSS);
  }
}
