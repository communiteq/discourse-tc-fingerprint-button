import { withPluginApi } from "discourse/lib/plugin-api";
import FingerprintButton from "../components/fingerprint-button";

export default {
  name: "discourse-tc-fingerprint-button",

  initialize() {
    withPluginApi("0.8.13", (api) => {
      api.renderInOutlet("user-card-additional-buttons", FingerprintButton)
      api.renderInOutlet("admin-user-controls-after", FingerprintButton)
    });
  },
};
