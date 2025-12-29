#!/bin/sh
set -e

for app in $NEXTCLOUD_APPS; do
    php occ app:install "$app" || true
    php occ app:enable "$app"
done
