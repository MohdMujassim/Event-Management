/**
 * @File Name          : lwcrecordlist.js
 * @Description        :
 * @Author             : Mohd Mujassim
 * @Group              :
 * @Last Modified By   : Mohd Mujassim
 * @Last Modified On   : 07/04/2024, 12:41:38 PM
 
 **/
import { LightningElement, api } from "lwc";

export default class Lwcrecordlist extends LightningElement {
  /* Public Property to pass the single record & iconname */
  @api rec;
  @api iconname = "standard:account";
  @api parentidfield;

  handleSelect() {
    let selectEvent = new CustomEvent("select", {
      detail: {
        selRec: this.rec,
        parent: this.parentidfield
      }
    });
    this.dispatchEvent(selectEvent);
  }

  handleRemove() {
    let selectEvent = new CustomEvent("select", {
      detail: {
        selRec: undefined,
        parent: this.parentidfield
      }
    });
    this.dispatchEvent(selectEvent);
  }
}
