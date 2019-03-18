#!/bin/bash
source .env
cd "."${APP_DOCROOT}${APP_CONTENT}

( cd themes/original-theme; git pull )