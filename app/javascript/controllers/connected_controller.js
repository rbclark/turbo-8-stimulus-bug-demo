// This controller is intended to be used as a base class for controllers that
// need to set the 'connected' attribute on the element they are attached to.

import {Controller} from "@hotwired/stimulus"

export default class ConnectedController extends Controller {
  static values = {connected: Boolean}

  connect() {
    this.connectedValue = true;
  }
}
