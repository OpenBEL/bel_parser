#!/usr/bin/env bash

VERSION=$1

if [ -z $VERSION ]; then
    echo "usage: bump.sh [NEXT GEM VERSION]" >&2
    exit 1
fi

# set version in VERSION file
echo "$VERSION" > VERSION

# update ISO 8601 date in gemspec
sed -ri "s/[0-9]{4}-[0-9]{2}-[0-9]{2}/$(date --iso-8601)/g" .gemspec

# commit
git commit .gemspec VERSION -m "Bumped to version $VERSION."

# tag as VERSION
git tag -a "$VERSION" -m "Tagged as version $VERSION."

# push commits upstream
REF=$(git symbolic-ref HEAD); git push upstream $REF

# push tag upstream
REF=$(git symbolic-ref HEAD); git push upstream "$VERSION"

# build gem
gem build .gemspec

# push gem
gem push "bel_parser-$VERSION.gem"
