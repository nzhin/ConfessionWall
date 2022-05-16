<?php
return [
    // 运行目录
    'root' => input('server.DOCUMENT_ROOT'),
    // PHP版本
    'phpVersion' => PHP_VERSION,
    // 操作系统
    'os' => PHP_OS,
    // 服务器软件
    'software' => input('server.SERVER_SOFTWARE'),
    // 文件上传最大数据
    'fileUploadSize' => (ini_get("file_uploads") ? ini_get("upload_max_filesize") : 0),
    // POST提交最大数据
    'postMaxSize' => (int) ini_get('post_max_size') . 'M',
    // 服务器域名
    'domian' => input('server.HTTP_HOST') . ' / ' . input('server.SERVER_ADDR'),
    // 服务器语言
    'serverLanguage' => input('server.HTTP_ACCEPT_LANGUAGE'),
    // 脚本运行占用最大内存
    'memoryLimit' => (int) ini_get("memory_limit") . 'M',
    // 脚本最大执行时间
    'maxExecutionTime' => (int) ini_get("max_execution_time") . '秒',
];
