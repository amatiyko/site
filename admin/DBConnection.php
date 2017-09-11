<?php
class DBConnection {
    private $dsn = 'mysql:host=localhost; dbname=web_team_site';
    private $user = 'root';
    private $password = '';

    private static $instance;

    private function __construct(){}
    private function __clone() {}

    static function getInstance() {
        if (self::$instance === null) {
           self::$instance = new self();
            return self::$instance;
        }

    }

    public function getDsn()
    {
        return $this->dsn;
    }

    public function getUser()
    {
        return $this->user;
    }

    public function getPassword()
    {
        return $this->password;
    }

}

