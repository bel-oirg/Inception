<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * Localized language
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'THEDB' );

/** Database username */
define( 'DB_USER', 'solace' );

/** Database password */
define( 'DB_PASSWORD', 'blackhorse' );

/** Database hostname */
define( 'DB_HOST', 'mariadb' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',          ',$6g/n.Tbu2)6v*4^~p2J!A)4JZ($FFF]SvBfHB2mmo?Z&61Xd?M)osDiLB|RWZ3' );
define( 'SECURE_AUTH_KEY',   ')Yi!KiU[aVruea.5-q1dK2rt~R=<$G|UdrrkQMbZ}dX|L)@Qdq*7:F*5B9a6i<87' );
define( 'LOGGED_IN_KEY',     'LNs!3~#h;qLJ@oiyEgnA3njJs5|(pP-_;#bKg`5v6#I/)y{s:x(T=0zPZ$6&iqty' );
define( 'NONCE_KEY',         '3A>iD1n#%UtRHEL`P=NzSv1,Q?F3|,`LGm=v[`C,pYU]WGskZ3W tZ(MDc1B/sCB' );
define( 'AUTH_SALT',         'SI&{mv.y$8%CdEm^?NrFT,PaS^.3>^Vl]l(Aq1I9]%yU;N/?&h2A2IPT5+g(AL,p' );
define( 'SECURE_AUTH_SALT',  'W;q9)V~gO`dc6I1?`B_|F`t+5xHm3DR1x{h$ud.NC`Dgo?LM~#d%_bBA<ap,QL^y' );
define( 'LOGGED_IN_SALT',    'qvU~Mmiw(JvHbWorh&KAyObi5&|rLu~z7g0%zP lc3rj$^&(#A&~:jR%t|G%U:$ ' );
define( 'NONCE_SALT',        '0Ip!x(h-XC(2T?4PC+~2UlLQ$ );z g*EY3_`lj3@OiQi=QU_es3MXZqx+*0q51#' );
define( 'WP_CACHE_KEY_SALT', 'YsdS#V9?y4WF8@`^@`OnDvfAye:*0_uURJa^EMC% I24if*%TlI1s.O0jwa1PGSp' );


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';


/* Add any custom values between this line and the "stop editing" line. */



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
if ( ! defined( 'WP_DEBUG' ) ) {
        define( 'WP_DEBUG', false );
}

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
        define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';

