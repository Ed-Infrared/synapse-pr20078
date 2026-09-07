# synapse-pr20078

Custom Synapse image: **v1.160.0 + [PR #20078](https://github.com/element-hq/synapse/pull/20078)** ("Speed up the room hierarchy endpoints").

The `Dockerfile` starts from the upstream `ghcr.io/element-hq/synapse:v1.160.0` image and overwrites the 6 production Python files changed by the PR. No compilation is needed (pure Python##.

The `.github/workflows/build.yml` builds this image on GitHub Actions and pushes it to `ghcr.io/ed-infrared/synapse:v1.160.0-pr20078`.

To deploy:, set `matrix_synapse_container_image: "ghcr.io/Ed-Infrared/synapse:v1.160.0-pr20078"` in the matrix-docker-ansible-deploy `vars.yml` and re-run `just install-all`.