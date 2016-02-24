# Wonderreaderr
[! travis build](https://travis-ci.org/vcavallo/wonderreaderr.svg?branch=release-candidate)

A place to suggest, archive and participate in "required readings".

- Ruby 2.3.0
- Rails 4.2.4
- PostgreSQL

- `bundle install`
- `rake db:create`
- (you may need to install postgres. for OS X with homebrew: `brew install
  postgresql`)

# Workflow and process

## Branches and their signifigance

### Permanent branches

- `master` - this is production. do not ever code on master :)
- `release-candidate` - this is staging / QA. this will be merged directly into
  master so that QA will be taking place on identical code as production
- `develop` - development takes place here.

### Temporary branches

- `feature-word-word-word`
    - use feature branches for anything more than small bug fixes.
- `release-n.n.n`
    - a planned release. develop will merge into this once individual features for the release have all been included in develop.

### Git Workflow

Ok, you're ready to work on a feature and get it deployed. Here's what you do:

1. make sure your local is all updated, `fetch`ed, `pull`ed etc.
2. checkout develop. from develop, checkout a _new_ branch with your feature name. Like: `feature-make-everything-red`
3. work on your feature. write tests, please. when you're done:
4. checkout develop, do `git merge --no-ff feature-make-everything-red`
5. delete your feature branch. `git branch -d feature-make-everything-red`. now push develop to origin.
6. when it's time to deploy: checkout a branch off develop called `release-0.5.3` (or whatever version number is appropriate) exactly like this. case matters, dashes/underscores matter...
7. run `rake version_number:set_from_git`. this will update the version file with the numbers following 'release-' in your branch name - this is why the naming is important.
8. make a commit noting that the version number has been bumped.
9. checkout `release-candidate`, then: `git merge --no-ff release-0.5.3` (or whatever this release was).
10. now `git tag -a 0.5.3` to tag this release **(this should really happen on master, i think....)**
11. checkout develop, then `git merge --no-ff release-0.5.3` to keep develop updated with the version change and whatnot.
12. delete the release branch `git branch -d release-0.5.3`

- **[NEED TO FILL IN]** instructions for deploying to staging.
- **[NEED TO FILL IN]** details about where TravisCI runs.

what's missing from the above is the production deployment. basically what it
looks like is merging `release-candidate` into `master` and tagging. every
commit into master _is a release_ in this setup.
