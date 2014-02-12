if [ $TRAVIS_PULL_REQUEST = "false" ]; then
    git clone https://github.com/PK1A/travis-publish.git temp && cd temp &&
    git config user.email "releasebot@ariatemplates.com" &&
    git config user.name "Release Bot" &&
    git checkout -b gh-pages origin/gh-pages &&
    cp -rf ../dist dist &&
    git add -f dist &&
    git commit -m "release ${TRAVIS_COMMIT}" &&
    git push "https://${GH_CREDENTIALS}@github.com/PK1A/travis-publish.git" gh-pages:gh-pages
fi