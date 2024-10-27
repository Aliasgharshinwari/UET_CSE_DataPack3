<?php
//Abstract class for polymorphism
abstract class Animal {
    public $name;
    
    abstract function makeSound();
}
//Inheritence Example 1
class Dog extends Animal {
    public function makeSound() {
        echo "Bark!\n";
    }
}
//Inheritence Example 2
class Cat extends Animal {
    public function makeSound() {
        echo "Meow!\n";
    }
}

// Creating objects
$dog = new Dog();
$cat = new Cat();

// Setting properties
$dog->name = "Dog";
$cat->name = "Cat";

// Accessing properties and calling methods
echo $dog->name . "\n";
$dog->makeSound();
echo $cat->name . "\n";
$cat->makeSound();
?>