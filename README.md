# lane2-minikube

Faithful mirror of the approval-integrity bug in
`kubernetes/minikube/.github/workflows/functional_extra.yml` (sha fb37ff40).

- `on: pull_request_target: types: [labeled]`
- gate: `contains(github.event.pull_request.labels.*.name, 'ok-to-extra-test')`
- checkout: `ref: ${{ github.event.pull_request.head.sha }}`
- then credentials + `<build from PR code>`

The `ok-to-extra-test` label is *persistent*. Prow relabels PRs automatically
(`size/*` on synchronize, `needs-rebase` when master moves), and each such
`labeled` event re-fires this workflow against the **current fork head**, not
the commit the maintainer approved.
