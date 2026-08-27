import { visit } from "@ember/test-helpers";
import { test } from "qunit";
import { acceptance } from "discourse/tests/helpers/qunit-helpers";

acceptance("Discourse Skills | homepage user badge", function (needs) {
  needs.user({
    name: "Alice",
    username: "alice",
    avatar_template: "/user_avatar/localhost/alice/{size}/1.png",
  });

  test("renders the current user's avatar and profile link", async function (assert) {
    await visit("/custom");

    assert.dom(".block-user-badge__layout").exists();
    assert.dom(".block-user-badge__link").hasAttribute("href", "/u/alice");
    assert
      .dom(".block-user-badge__link")
      .hasAttribute("data-user-card", "alice");
    assert.dom(".block-user-badge__name").hasText("Alice");
  });
});
