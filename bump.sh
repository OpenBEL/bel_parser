#!/usr/bin/env bash
CURRENT=$(cat VERSION)
NEXT=$(echo "puts \"${CURRENT}\".next" | ruby)

read -p "Bump and release $NEXT [Y OR y]? " -n 1 -r
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo -e "\nExiting."
    exit 1
fi

# set version in VERSION file
echo "$NEXT" > VERSION

# update ISO 8601 date in gemspec
sed -ri "s/[0-9]{4}-[0-9]{2}-[0-9]{2}/$(date --iso-8601)/g" .gemspec

# commit
git commit .gemspec VERSION -m "Bumped to version $NEXT."

# tag as VERSION
git tag -a "$NEXT" -m "Tagged as version $NEXT."

# push commits upstream
REF=$(git symbolic-ref HEAD); git push upstream $REF

# push tag upstream
REF=$(git symbolic-ref HEAD); git push upstream "$NEXT"

# build mri gem
gem build .gemspec

# push mri gem
gem push "bel_parser-$NEXT.gem"

source /usr/share/chruby/chruby.sh
RUBIES+=(
  /home/tony/tools/rubies/jruby-9.1.0.0
)
chruby jruby-9.1.0.0

# build java gem
gem build .gemspec-java

# push java gem
gem push "bel_parser-${NEXT}-java.gem"
