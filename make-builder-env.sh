#!/bin/bash
if [ "$1" = "--help" -o $# -ne 0 ]; then
    echo Usage: $0 
    echo After editing builder-settings.env, execute this command with no args.
    exit
fi
source builder-settings.env

cat template-composer.json \
| sed "s/%WP_CORE%/${WP_CORE}/" \
| sed "s/%BUILDER_NAME%/${BUILDER_NAME}/" \
| sed "s/%BUILDER_EMAIL%/${BUILDER_EMAIL}/" \
| sed "s/%SITENAME%/${SITENAME}/" \
> composer.json

cat template.gitignore \
| sed "s/%WP_CORE%/${WP_CORE}/" \
> .gitignore

echo "COMPLETE: composer.json and .gitignore generated."
