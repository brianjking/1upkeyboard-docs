# Deploy documentation to GitHub pages
if [ "$TRAVIS_BRANCH" == "master" -a "$TRAVIS_PULL_REQUEST" == "false" ]; then
  REMOTE="https://${GH_TOKEN}@github.com/brianjking/1upkeyboard-docs"

  # Set configuration for repository and deploy documentation
  git config --global user.name "${GH_NAME}"
  git config --global user.email "${GH_EMAIL}"
  git remote set-url origin $REMOTE
  mkdocs gh-deploy --force
fi