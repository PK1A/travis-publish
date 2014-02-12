if [ $TRAVIS_PULL_REQUEST = "false" ]; then
    # setup git user name / e-mail
    git config user.email "releasebot@ariatemplates.com"
    git config user.name "Release Bot"
    # specify gh_user gh_pass as part of the git url
    git remote add github "https://${GH_CREDENTIALS}@github.com/PK1A/travis-publish.git"
    # check-in & push
    git checkout -b origin/gh-pages && git add dist && git commit -m "release ${TRAVIS_COMMIT}" && git push github gh-pages
    # restore initial branch
    git checkout ${TRAVIS_BRANCH}
fi