import { LightningElement } from 'lwc';
export default class UrlComp extends LightningElement {

baseUrl;

result
    connectedCallback() {
        this.baseUrl=window.location.origin;
       
    }

    get Clasic()
    {
        return this.result=this.baseUrl+'.my.salesforce.com/home/home.jsp?source=lex';
    }
   get lightingView()
    {
      return  this.result=this.baseUrl+'.lightning.force.com/lightning/page/home?0.source=alohaHeader';
    }

}