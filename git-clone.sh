#!/bin/bash
source .env
cd "."${APP_DOCROOT}${APP_COONTENT}

(mkdir themes/original-theme; cd themes/original-theme; git clone https://github.com/developers-name/original-theme.git .)