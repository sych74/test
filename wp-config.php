<?php

define('WP_DEBUG', 'true');
// ** MySQL settings ** //
/** The name of the database for WordPress */
define('REVISR_WORK_TREE', '/var/www/webroot/ROOT/'); // Added by Revisr
define('REVISR_GIT_PATH', 'https://sych74:sych1974unigeocloud@github.com/sych74/test.git'); // Added by Revisr
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

define('AUTH_KEY',         '|tc;Pwm}!!;rmwf+*:,r{c+3N$DjsZ$[FxRuu&-s-Zu<zi;8(Xy%@ ]=6bW2STzc');
define('SECURE_AUTH_KEY',  'C3-ecN^d%Dh:^JO(pF,m!?(QN-pU2?`b_9)} LpVHz0Hb@>>b2cZ+A,M6f-t{db~');
define('LOGGED_IN_KEY',    'n{&)-J,9Ik[-.Pp7u:DE:c|N4K-T^1rcF7SA&:]t08|cEDOYEc</uMdU2R0|8@+>');
define('NONCE_KEY',        'XLP~Z*<dZc56nZz-o-:v]|BL_$>H{qCiCg^u9Q}N4-/!)YuL[017^ $HP`/#z^)?');
define('AUTH_SALT',        '|`|6qF+_{M]4a PA.|Bfo7I3-6T+?|%=+0vUYLthVI!-W1YCg(S6DohN%HqU@AgH');
define('SECURE_AUTH_SALT', '_6) D41)%)nnP;KYMk0Fi-5o} 4Z/?:@t)Zp.,r534^t1X^uYSz|JDl%X1;]@qO3');
define('LOGGED_IN_SALT',   'Spl0YT;|..4juI3B;+F7XSOqGeP(#<p [ve|j-l*p-6^[Tu||+*0t+]0=HCTn^|o');
define('NONCE_SALT',       'R@g`0t[->X/f|WD|>a|,hzX:sHWqfglm;suJi7rP)w#b_dT6o-8#%|f}9:);df.L');


$table_prefix = 'wp_';





/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
define('FS_METHOD','direct');
