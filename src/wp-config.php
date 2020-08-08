<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         ':6|*j}o-8J~W 2u]$wXiV07X-a #PNNCU>+a{LmIKw+YHWtmlOyWH~@x@~ory!CZ' );
define( 'SECURE_AUTH_KEY',  '!r+Rr,|PqM?Kn+MC/kxx?_19-?) %T!36+2DMkn_N-O6JN8m:),De )qb2zp$M>k' );
define( 'LOGGED_IN_KEY',    '|wZ6~uFHrgX&4Nw|_^;nw:=} ux1n%KByce_;&$vd31&<pSG)B,PA`H-y4e}pAO-' );
define( 'NONCE_KEY',        '-L+vHD,};ijgq>-+]Ust(|f`NWe6XeVM0.?5BD>=HD?.vW?-DH)w,H%cf R>yRqb' );
define( 'AUTH_SALT',        'X?~n)zN|y25UKF$;7*ABWDH)o)nWjD)E[Tv{In+}Oy1|Lt-I7pRx;+yZFu1Xvo_/' );
define( 'SECURE_AUTH_SALT', '1;M?bP;#hL?^C9Q+q/k +LmSH7u|Ffr5Wc-q@&m7GuZrz,9dK} $6ibXVJb%Sjs(' );
define( 'LOGGED_IN_SALT',   '%r@NgEwxE9kY+6vNGCwLdY^#,5!zC<dw%-Bg>}haN3JX&MRU.a;n}^dd?eSPyFH-' );
define( 'NONCE_SALT',       'kqL/iN8$QlTi@0AnP@H` :![Jj,+mR{.C/ hc;(]6a1])t#>BnP#KPmgnng-kR16' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
        define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';

define('FS_METHOD', 'direct');