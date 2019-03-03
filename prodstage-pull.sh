#!/bin/bash
source .env
cd "."${APP_DOCROOT}${APP_CORE}"/wp-content"

( cd themes/original-theme; git pull )