# Discourse Fingerprint Link

A Discourse theme component that adds a convenient button to the user card and user admin page to quickly navigate to the user's fingerprint page (requires the discourse-fingerprint plugin).

## Features

- Adds a fingerprint icon button to the button menu on the User Card.
- Adds a fingerprint icon button to the admin controls on the User Admin page.
- Directs admins to the specific user's fingerprint history, filtering by their username.

## Requirements

- [Discourse Fingerprint Plugin](https://github.com/discourse/discourse-fingerprint) must be installed and enabled.

## Installation

1. Navigate to **Admin > Customize > Themes**.
2. Select your current theme.
3. Click **Theme Components**.
4. Click **Install**.
5. Select **From a git repository**.
6. Enter the URL of this repository.
7. Click **Install**.

## Usage

Once installed, admins will see a fingerprint icon button:
- On usercards.
- On the user's admin page (admin/users/{username}/{id}).

Clicking the button navigates to `/admin/plugins/fingerprint?username={username}`.

## License

MIT
