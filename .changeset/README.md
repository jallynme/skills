# Changesets

This folder is managed by [changesets](https://github.com/changesets/changesets). Every change that
should show up in the `CHANGELOG.md` gets a changeset.

**Add a changeset** (run after making a change):

```bash
npm run changeset
```

Pick the bump (patch / minor / major) and write a one-line summary. Commit the generated
`.changeset/*.md` file with your change.

**Cut a release** (maintainer):

```bash
npm run version   # consumes changesets → bumps version + updates CHANGELOG.md
git commit -am "Version packages" && git tag vX.Y.Z && git push --follow-tags
```
