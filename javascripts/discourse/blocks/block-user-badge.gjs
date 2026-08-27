import Component from "@glimmer/component";
import { service } from "@ember/service";
import { block } from "discourse/blocks";
import avatar from "discourse/helpers/avatar";
import getURL from "discourse/lib/get-url";

@block("theme:skills:user-badge", {
  description: "Current user avatar and profile link",
})
export default class BlockUserBadge extends Component {
  @service currentUser;
  @service siteSettings;

  get displayName() {
    if (
      this.siteSettings.prioritize_username_in_ux ||
      !this.currentUser.name
    ) {
      return this.currentUser.username;
    }
    return this.currentUser.name;
  }

  get showUsername() {
    return this.displayName !== this.currentUser.username;
  }

  get profileUrl() {
    return getURL(`/u/${this.currentUser.username}`);
  }

  <template>
    {{#if this.currentUser}}
      <div class="block-user-badge__layout">
        <a
          class="block-user-badge__link"
          data-user-card={{this.currentUser.username}}
          href={{this.profileUrl}}
        >
          {{avatar this.currentUser imageSize="medium"}}
          <span class="block-user-badge__identity">
            <span class="block-user-badge__name">{{this.displayName}}</span>
            {{#if this.showUsername}}
              <span class="block-user-badge__username">
                @{{this.currentUser.username}}
              </span>
            {{/if}}
          </span>
        </a>
      </div>
    {{/if}}
  </template>
}
