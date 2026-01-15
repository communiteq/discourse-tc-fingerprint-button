import Component from "@glimmer/component";
import { action } from "@ember/object";
import { service } from "@ember/service";
import DButton from "discourse/components/d-button";

export default class FingerprintButton extends Component {
  @service currentUser;
  @service siteSettings;
  @service router;

  get showButton() {
    return this.siteSettings.fingerprint_enabled && this.currentUser && this.currentUser.admin;
  }

  @action
  gotoFingerprintPage() {
    this.router.transitionTo("adminPlugins.fingerprint", {
      // user-card-additional-buttons has arg "user"
      // admin-user-controls-after has arg "model"
      queryParams: { username: this.args?.user?.username || this.args?.model?.username }
    }).then(() => {
      // Explicitly force a refresh of the route's model
      // necessary since we can have a user card on the actual fingerprint page
      this.router.refresh();
    });
  }

  <template>
    {{#if this.showButton}}
      <DButton
        @label="fingerprint.title"
        @icon="fingerprint"
        @action={{this.gotoFingerprintPage}}
        class="btn-default"
      />
    {{/if}}
  </template>
}

