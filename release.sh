if [ $TRAVIS_PULL_REQUEST = "false" ]; then
    # setup git user name / e-mail
    git config user.email "releasebot@ariatemplates.com"
    git config user.name "Release Bot"
    # check-in & push
    git fetch origin &&
    git checkout -b gh-pages remotes/origin/gh-pages &&
    git add -f dist &&
    git commit -m "release ${TRAVIS_COMMIT}" &&
    git push "https://${GH_CREDENTIALS}@github.com/PK1A/travis-publish.git" gh-pages:gh-pages
    git branch -a
fi