<?php


// ** MySQL settings ** //
/** The name of the database for WordPress */
define('REVISR_GIT_PATH', 'https://sych74:sych1974unigeocloud@github.com/sych74/test.git'); // Added by Revisr
define('REVISR_WORK_TREE', '/var/www/webroot/ROOT/'); // Added by Revisr
define('DB_NAME', 'wordpress');

/** MySQL database username */
define('DB_USER', 'wordpress');

/** MySQL database password */
define('DB_PASSWORD', 'sj34Jhg645hH');

/** MySQL hostname */
define('DB_HOST', 'DB_1');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

define('AUTH_KEY',         '!Raun=EXO0GYsfX#m|#5cihmowTK|h!d8Q{AkE<ldog 8oW+V++(#;V(,UwQxoU*');
define('SECURE_AUTH_KEY',  ',[&@|9iCf8c+bXia6ZBo+*1pkpQL@C->^$9UP)uAl(D.5$Wqk3](6F3 s8^hQT;%');
define('LOGGED_IN_KEY',    'vt5a*]dK>C.Y_~P5$9+mjN}EzRqD;9}w4_o>^8f.H0GJ0MUm,et9iZ_0O|=i?GWc');
define('NONCE_KEY',        ',Ip6(j4!i2A(*|)~R=v#Ch06jf9?%i`Xq&md(w{0bVhAj{FDRZ^@OW-g|J^#~]zw');
define('AUTH_SALT',        'sCaQh&Tig*]1sF,O=P:n)ft7AVd1nBG^_$Rci!kVR^3i(siuMOAwV~,WtuLJInym');
define('SECURE_AUTH_SALT', 'nt.*,OTqd+(K-*u~r)4dHF#X!~iG+g^}WwSh|,&GYCJf}RX>m{-{1Yo|FJ8Q!x-b');
define('LOGGED_IN_SALT',   ' %y^&s_Al)GkIjqRp<p<@c/n0p+S}m2<H/g^N^O/prZ<nfW]b$Cqhhf|]sdl*7S/');
define('NONCE_SALT',       '~C:&@[5[9d}C]D&s#`~J&]!Ce9xS+a-CiJH4o{/pDoJ!KQ2?+.3~JJ1nnD}-k-bY');


$table_prefix = 'wp_';





/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
define('FS_METHOD','direct');
