import { LightningElement, track } from "lwc";

export default class Demo extends LightningElement {
    @track name = "Hello World";

    connectedCallback() {
        console.log("connectedCallback 😐😐😐😐😐", this.name);
    }
}