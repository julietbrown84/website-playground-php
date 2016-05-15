<?php
define('SS_DATABASE_SERVER', '127.0.0.1');
define('SS_DATABASE_NAME', 'forsyth');
define('SS_DATABASE_USERNAME', 'root');
define('SS_DATABASE_PASSWORD', 'silverstripe');

define('SS_ENVIRONMENT_TYPE', 'dev');

/* Configure a default username and password to access the CMS on all sites in this environment. */
define('SS_DEFAULT_ADMIN_USERNAME', 'admin');
define('SS_DEFAULT_ADMIN_EMAIL', 'juliet@silverstripe.com');
define('SS_DEFAULT_ADMIN_PASSWORD', 'pass');
define('SS_SEND_ALL_EMAILS_TO', 'juliet+to@silverstripe.com');
define('SS_SEND_ALL_EMAILS_FROM', 'juliet+from@silverstripe.com');
      define('ENCRYPT_AT_REST_KEY', 'def000003b8d686c623366229dfc2bf5f5e2d0dc14a8ff83de55861ba735225058937c9c458a8fdabfa5dc7d02248201d55ae4f33f441d05f95d4ecd3f6108f3d1bd1c6b');

// define('AWS_GRAPH_BUCKET', 'meridian-energy-uat-storage-1a1e7ggwg1k03');
// define('AWS_ACCESS_KEY', 'AKIAJ5JFG37VWC57MFWA');
// define('AWS_ACCESS_SECRET', '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');
// define('AWS_REGION_NAME', 'ap-southeast-2');


// Forsyth NZ POST API for testing
define('SS_SUMMER_NZPOST_URI', 'https://api.nzpost.co.nz/privateaddresschecker/1.0/');
define('SS_SUMMER_NZPOST_CLIENT_ID', 'aab288a710c54579b0b27324c559ddcd');
define('SS_SUMMER_NZPOST_CLIENT_SECRET', 'cd8c2dc7575f4d3e83F803124D919259');


date_default_timezone_set('Pacific/Auckland');

//hack to get AddressRight api to accept requests from *.silverstripe.com
$_FILE_TO_URL_MAPPING['/Users/juliet/Sites/website-playground-php'] = 'http://forsyth.dev/';

global $_FILE_TO_URL_MAPPING;
$_FILE_TO_URL_MAPPING['/Users/jbrown/Sites'] = 'http://localhost';
