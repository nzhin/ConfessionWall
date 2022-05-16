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

class JsonCore
{
    /**
     * 返回信息
     * @var string
     */
    protected $info = 'success';
    /**
     * 返回数据
     * @var array
     */
    protected $data = [];
    /**
     * 额外选项
     * @var array
     */
    protected $option = [];
    /**
     * 状态码
     * @var int
     */
    protected $status = 1;

    /**
     * Error Json
     * @access public
     * @param string $info 错误信息
     * @param array $data 数据
     * @param array $options 额外选项
     * @param int $status 状态码
     * @return $this
     */
    public function error($info = 'error', $data = [], $options = [], $status = 0)
    {
        $this->info = $info;
        $this->data = $data;
        $this->option = $options;
        $this->status = $status;

        return $this;
    }

    /**
     * Success Json
     * @access public
     * @param string $info 成功信息
     * @param array $data 数据
     * @param array $options 额外选项
     * @param int $status 状态码
     * @return $this
     */
    public function success($info = 'success', $data = [], $options = [], $status = 1)
    {
        $this->info = $info;
        $this->data = $data;
        $this->option = $options;
        $this->status = $status;

        return $this;
    }


    /**
     * 返回Json信息
     * @access public
     * @return string
     */
    public function res()
    {
        $array = ['status' => $this->status, 'info' => $this->info, 'data' => $this->data];
        $array = array_merge($array, $this->option);
        return json($array);
    }

    /**
     * 获取数组列表
     * @access public
     * @return array
     */
    public function getArray()
    {
        $array = ['status' => $this->status, 'info' => $this->info, 'data' => $this->data];
        return array_merge($array, $this->option);
    }

    public function __toString()
    {
        $array = ['status' => $this->status, 'info' => $this->info, 'data' => $this->data];
        $array = array_merge($array, $this->option);
        header('Content-Type: application/json; charset=utf-8');
        return json_encode($array);
    }

    public function __call($method, $params)
    {
        if (in_array($method, ['option'])) {
            $number = count($params);
            if ($number === 1) {
                $this->$method = array_merge($this->$method, $params[0]);
            } else if ($number === 2) {
                $this->$method[$params[0]] = $params[1];
            }
        } else if (in_array($method, ['info', 'status'])) {
            $this->$method = $params[0];
        } else {
            $this->option[$method] = $params[0];
        }
        return $this;
    }
}