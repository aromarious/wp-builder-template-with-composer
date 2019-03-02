#!/bin/bash
#echo $#
if [ $1 = "--help" -o $# -ne 1 ]; then
    echo Usage: $0 relative-path-of-wp-core-without-beginning-slash-or-trailing-slash
    echo 'ex) ' $0 'wp'
    exit
fi

sed "s/%WP_CORE%/$1/" composer-template.json > composer.json
echo "COMPLETE: composer.json generated."
