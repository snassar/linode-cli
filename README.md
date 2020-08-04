# linode-cli
A Containerfile for the linode cli

## Prerequisites
- podman
  - rootless
- a linode access token and linode-cli configuration file

## Howto
- `git clone git@github.com:HRWSEC/linode-cli.git`
- `cd linode-cli`
- `podman build -t linode-cli .`
- `cp configuration/linode-cli ~/.config/linode-cli`
- edit `~/.config/linode-cli` as needed
- `alias linode-cli="podman run -v ~/.config/linode-cli:/home/archibald/.config/linode-cli linode-cli"`

## Test

```console
$linode-cli
linode-cli profile [ACTION]

Available actions: 
┌───────────────┬──────────────────────────────────────────┐
│ action        │ summary                                  │
├───────────────┼──────────────────────────────────────────┤
│ view          │ View Profile                             │
│ update        │ Update Profile                           │
│ apps-list     │ List Authorized Apps                     │
│ app-view      │ View Authorized App                      │
│ app-delete    │ Revoke App Access                        │
│ tfa-disable   │ Disable Two Factor Authentication        │
│ tfa-enable    │ Create Two Factor Secret                 │
│ tfa-confirm   │ Confirm/Enable Two Factor Authentication │
│ tokens-list   │ List Personal Access Tokens              │
│ token-create  │ Create Personal Access Token             │
│ token-view    │ View Personal Access Token               │
│ token-update  │ Update Personal Access Token             │
│ token-delete  │ Revoke Personal Access Token             │
│ logins-list   │ List Logins                              │
│ login-view    │ View Login                               │
│ devices-list  │ List Trusted Devices                     │
│ device-view   │ View Trusted Device                      │
│ device-revoke │ Revoke Trusted Device                    │
└───────────────┴──────────────────────────────────────────┘
```
