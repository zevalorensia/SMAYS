<?php

class App
{
    protected $controller = 'AuthController'; // Default controller
    protected $method = 'index'; // Default method
    protected $params = [];

    public function __construct()
    {
        $url = $this->parseUrl();

        // Controller
        if (isset($url[0])) {
            if (file_exists('../app/controllers/' . $url[0] . '.php')) {
                $this->controller = $url[0];
                unset($url[0]);
            }
        }

        require_once '../app/controllers/' . $this->controller . '.php';
        $this->controller = new $this->controller;

        // Method
        if (isset($url[1])) {
            if (method_exists($this->controller, $url[1])) {
                $this->method = $url[1];
                unset($url[1]);
            }
        }

        // Params
        if (!empty($url)) {
            $this->params = array_values($url);
        }

        // Debugging output
        //echo "Controller: " . get_class($this->controller) . "<br>";
        //echo "Method: " . $this->method . "<br>";
        //echo "Params: " . print_r($this->params, true) . "<br>";

        // Jalankan controller & method + params
        call_user_func_array([$this->controller, $this->method], $this->params);
    }

    public function parseUrl()
    {
        if (isset($_GET['url'])) {
            $url = rtrim($_GET['url'], '/');
            $url = filter_var($url, FILTER_SANITIZE_URL);
            $url = explode('/', $url);
            return $url;
        }
        return ['HomeController', 'index']; // Default controller and method if URL is not set
    }
}
