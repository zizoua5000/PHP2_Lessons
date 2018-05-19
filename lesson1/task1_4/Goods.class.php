<?
Class Goods {
    public $price, $condition, $manufacturer, $name;
    function __construct($price, $condition, $manufacturer, $name) {
        $this->price = $price;
        $this->condition = $condition;
        $this->manufacturer = $manufacturer;
        $this->name = $name;
    }
    function printGoods(){
        echo "</br>" . $this->name . " is manufactured by " . $this->manufacturer . " and price is " . $this->price . ".";
    }
}


Class Books extends Goods {
    public $pages, $author;
    function __construct($price, $condition, $manufacturer, $name, $pages, $author){
        parent::__construct($price, $condition, $manufacturer, $name);
        $this->pages = $pages;
        $this->author = $author;
    }
    function printBook(){
        parent::printGoods();
        echo " This book's author is " . $this->author . " and it has " . $this->pages . " pages. </br> ";
    }
}

Class Notebook extends Goods {
    public $scrennSize, $cpu, $ram;
    function __construct($price, $condition, $manufacturer, $name, $scrennSize, $cpu, $ram){
        parent::__construct($price, $condition, $manufacturer, $name);
        $this->screenSize = $scrennSize;
        $this->cpu = $cpu;
        $this->ram = $ram;
    }
    function printNote(){
        parent::printGoods();
        echo " This notebook has " . $this->screenSize . " inch screen size, " . $this->cpu . " model of CPU and " . $this->ram . " GB of RAM.";
    }
}


$someGoods = new Goods(200,"New", "XY manufacturer", "Some goods");
$firstBook = new Books (400,"New", "Y press", "PHP", 545, "Ali");
$firstNotebook = new Notebook (1000,"New", "Dell", "Latitude E7000", 17, "intel core i7", 16);

$someGoods->printGoods();
$firstBook->printBook();
$firstNotebook->printNote();
