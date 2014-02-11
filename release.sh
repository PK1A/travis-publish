if [ $TRAVIS_PULL_REQUEST = "false" ]; then
    git checkout -b origin/gh-pages && git add . && git commit -m "release ${TRAVIS_COMMIT}"
    echo "Build from ${TRAVIS_BRANCH}"
fi