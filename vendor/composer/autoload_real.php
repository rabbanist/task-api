<?php

// autoload_real.php @generated by Composer

class ComposerAutoloaderInit962ac28ce64a436a1a20a4e6d60d5358
{
    private static $loader;

    public static function loadClassLoader($class)
    {
        if ('Composer\Autoload\ClassLoader' === $class) {
            require __DIR__ . '/ClassLoader.php';
        }
    }

    /**
     * @return \Composer\Autoload\ClassLoader
     */
    public static function getLoader()
    {
        if (null !== self::$loader) {
            return self::$loader;
        }

        spl_autoload_register(array('ComposerAutoloaderInit962ac28ce64a436a1a20a4e6d60d5358', 'loadClassLoader'), true, true);
        self::$loader = $loader = new \Composer\Autoload\ClassLoader(\dirname(__DIR__));
        spl_autoload_unregister(array('ComposerAutoloaderInit962ac28ce64a436a1a20a4e6d60d5358', 'loadClassLoader'));

        require __DIR__ . '/autoload_static.php';
        call_user_func(\Composer\Autoload\ComposerStaticInit962ac28ce64a436a1a20a4e6d60d5358::getInitializer($loader));

        $loader->register(true);

        return $loader;
    }
}
