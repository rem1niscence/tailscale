This repository exists to apply a small patch to upstream `tailscale` so Cilium/CNI interfaces are ignored.

- A GitHub Actions workflow runs daily and applies the patch to each new upstream release tag, builds, 
  and publishes the patched artifacts.
- The patch is `patches/netmon-ignore-cilium-calico.patch`.
- This fork will be up until the upstream issue is fixed: https://github.com/tailscale/tailscale/issues/1552

Relevant references:
- Upstream PR that inspired the change: https://github.com/tailscale/tailscale/pull/8682
- Related upstream discussion: https://github.com/tailscale/tailscale/issues/7594
