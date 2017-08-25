---
title: "Upgrade Bootstrap 4 Beta"
---

Foehn v0.29.0 use the Bootstrap alpha 6. Foehn v0.30.0 use the beta version.

Here are all the change you need to do to make the jump.

## Update spacing utilities

Two size are included in spacing utilities.

| old values            | new values            |
|-----------------------|-----------------------|
| `{property}{sides}-1` | `{property}{sides}-1` |
|                       | `{property}{sides}-2` |
|                       | `{property}{sides}-3` |
| `{property}{sides}-2` | `{property}{sides}-4` |
| `{property}{sides}-3` | `{property}{sides}-5` |

### Regex to use

#### size 3 becomes 5
- Find: `([pm])([xytrbl])-3`
- Replace: `$1$2-5`

#### size 2 becomes 4
- Find: `([pm])([xytrbl])-3`
- Replace: `$1$2-5`

## Update button class

Replace `.btn-primary` class with `.btn-dark`.
