<?php
/*
 * // +--------------------------------------------+
 * // | Name: ConfessionWall
 * // +--------------------------------------------+
 * // | Author: White.【Nzhin】<www.nzhin.cn>
 * // +--------------------------------------------+
 * // | Contact: QQ：1449893567
 * // +--------------------------------------------+
 * // | Created: PhpStorm
 * // +--------------------------------------------+
 * // | Date: 2022年5月15日
 * // +--------------------------------------------+
 */
namespace app\install\controller;

use app\install\controller\JsonCore;

/**
 * Class Json
 * @package app\install\controller
 */
class Json
{
    /**
     * 自身实例
     * @var self()
     */
    protected static $init;


    public static function error(...$args)
    {
        return call_user_func_array([self::core(), __FUNCTION__], $args);
    }

    public static function success(...$args)
    {
        return call_user_func_array([self::core(), __FUNCTION__], $args);
    }

    public static function status(...$args)
    {
        return call_user_func_array([self::core(), __FUNCTION__], $args);
    }

    public static function info(...$args)
    {
        return call_user_func_array([self::core(), __FUNCTION__], $args);
    }

    public static function data(...$args)
    {
        return call_user_func_array([self::core(), __FUNCTION__], $args);
    }

    public static function option(...$args)
    {
        return call_user_func_array([self::core(), __FUNCTION__], $args);
    }

    public static function count(...$args)
    {
        return call_user_func_array([self::core(), __FUNCTION__], $args);
    }

    protected static function core()
    {
        if (is_null(static::$init)) {
            static::$init = new JsonCore();
        }
        return static::$init;
    }

    public static function __callStatic($method, $args)
    {
        return call_user_func_array([self::core(), $method], $args);
    }
}