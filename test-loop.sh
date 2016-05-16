#!/usr/bin/env bash
while true; do
    rslt=$(gate $(find lib spec -type d) | head -n 1 | awk '{ print $1 }')
    if [[ $rslt = *rl ]]; then
        clear
        echo "Building @ $(date)"
        echo $rslt
        ./build_all.sh || continue
    fi

    if [ -n "$spec" ]; then
      rspec -f d \
            --color \
            "$spec" \
            $@ \
            2>>stderr
    else
      rspec -f d \
            --color \
            spec/unit/parsers/ast/node_spec.rb \
            spec/unit/language/version1/syntax/*.rb \
            $@ \
            2>>stderr
    fi
    rspec_ec=$?
    if [ $rspec_ec -ne 0 ]; then
        say -v Audrey "Tu as perdu. Essayez à nouveau." --rate 225 &
        osascript -e 'display notification "RSpec failure" with title "RSpec"'
    else
        say -v Audrey "Tu as gagné, bien joué!" --rate 225 &
        osascript -e 'display notification "Success!" with title "RSpec"'
    fi
done

