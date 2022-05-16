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
use think\facade\Route;

Route::rule('card/ajax', 'card/ajax');
Route::rule('card/:id', 'card/index');
Route::rule('email/ajax', 'email/ajax');
Route::rule('email/:id', 'email/index');