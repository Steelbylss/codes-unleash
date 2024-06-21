-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 16, 2024 at 07:15 AM
-- Server version: 8.0.32
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id22197349_codesunleash`
--

-- --------------------------------------------------------

--
-- Table structure for table `badges`
--

CREATE TABLE `badges` (
  `id` bigint UNSIGNED NOT NULL,
  `reference_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `badge_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `badge_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `badges`
--

INSERT INTO `badges` (`id`, `reference_number`, `badge_name`, `description`, `badge_image`, `created_at`, `updated_at`) VALUES
(1, '2c62d29e2bbe', 'Welcome Badge', 'User have successfully verified their account.', 'images/HVHyFOpyI37m8mb6lbiVAytMtRsrIVWED12fvSu7.png', '2024-04-18 03:58:47', '2024-04-18 03:58:47'),
(5, 'f71833d80fd8', 'Exam Badge', 'User sucessfully finished the course!', 'images/oVEB4uJMOK1DecothvteP6yQ6iqvACKHthyiqfnF.png', '2024-04-22 09:12:51', '2024-04-22 09:12:51');

-- --------------------------------------------------------

--
-- Table structure for table `chapters`
--

CREATE TABLE `chapters` (
  `id` bigint UNSIGNED NOT NULL,
  `reference_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `programming_language_id` bigint UNSIGNED NOT NULL,
  `chapter_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chapters`
--

INSERT INTO `chapters` (`id`, `reference_number`, `programming_language_id`, `chapter_name`, `created_at`, `updated_at`) VALUES
(1, 'ab879edd8897', 1, 'Chapter 1', '2024-04-18 04:11:49', '2024-04-18 04:11:49'),
(2, 'f5af7073e1cf', 1, 'Chapter 2', '2024-04-18 04:18:42', '2024-04-18 04:18:42'),
(3, 'b00b32358061', 1, 'Chapter 3', '2024-04-18 04:24:27', '2024-04-18 04:24:27'),
(4, '60e73b5b44be', 1, 'Chapter 4', '2024-04-18 04:30:45', '2024-04-18 04:30:45'),
(5, 'a623dcfb6966', 1, 'Chapter 5', '2024-04-18 04:37:10', '2024-04-18 04:37:10');

-- --------------------------------------------------------

--
-- Table structure for table `chapter_assessments`
--

CREATE TABLE `chapter_assessments` (
  `id` bigint UNSIGNED NOT NULL,
  `reference_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chapter_id` bigint UNSIGNED NOT NULL,
  `question_number` int NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `code_snippet` text COLLATE utf8mb4_unicode_ci,
  `choice_1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `choice_2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `choice_3` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `choice_4` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `correct_answer` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chapter_assessments`
--

INSERT INTO `chapter_assessments` (`id`, `reference_number`, `chapter_id`, `question_number`, `question`, `code_snippet`, `choice_1`, `choice_2`, `choice_3`, `choice_4`, `correct_answer`, `created_at`, `updated_at`) VALUES
(1, 'f4b418eab5fe', 1, 1, 'What is the correct syntax to output “Hello World” in Kotlin?', NULL, 'println(“Hello World”)', '/* this is a comment', '-- this is a comment', '# this is a comment', 1, '2024-04-18 04:46:46', '2024-04-18 04:46:46'),
(2, '38e0dca8ec46', 1, 2, 'How do you insert COMMENTS in Kotlin code?', NULL, '/* This is a comment', '- - This is a comment', '//  This is a comment', '# This is a comment', 1, '2024-04-18 04:48:23', '2024-04-18 04:48:23'),
(3, '07997b3e84d6', 1, 3, 'Which keyword is used to declare a function?', NULL, 'fun', 'decl', 'define', 'function', 1, '2024-04-18 04:50:12', '2024-04-18 04:50:12'),
(4, 'b709fe67ccfa', 1, 4, 'In Kotlin, code statements must end with a semicolon(;)', NULL, 'True', 'False', 'Both true and false', 'Neither true nor false', 2, '2024-04-18 04:52:50', '2024-04-18 04:52:50'),
(5, 'd7c402b70496', 1, 5, 'What is the key difference between var and val in Kotlin?', NULL, 'var is used for variables that can be reassigned, while val is used for constants with fixed values.', 'val is used for variables that can be reassigned, while var is used for constants with fixed values.', 'Both var and val are used interchangeably for declaring variables.', 'var is used for integers, and val is used for strings.', 1, '2024-04-18 04:54:12', '2024-04-18 04:54:12'),
(6, 'b1fc72755502', 1, 6, 'What does ‘fun main()’ represent in Kotlin?', NULL, 'A comment', 'The program’s entry point', 'A variable declaration', 'An output declaration', 2, '2024-04-18 04:55:30', '2024-04-18 04:55:30'),
(7, 'c9e542ca97ab', 1, 7, 'What is the purpose of the ‘println’ function in Kotlin?', NULL, 'To print a string to the console followed by a new line.', 'To concatenate two strings together.', 'To read user input from the console.', 'To convert a string to uppercase.', 1, '2024-04-18 04:56:35', '2024-04-18 04:56:35'),
(8, 'f7eb88c081ed', 1, 8, 'What do single-line comments in Kotlin start with?', NULL, '/', '//', '/*', '<!--', 2, '2024-04-18 04:57:30', '2024-04-18 05:47:29'),
(9, 'f10d502dd9d3', 1, 9, 'Why are single-line comments used in Kotlin?', NULL, 'To create outputs', 'To annotate or explain code that won’t be executed', 'To declare variables', 'To mark the program’s entry point', 2, '2024-04-18 04:59:00', '2024-04-18 04:59:00'),
(10, 'b7e4e2caa8ab', 1, 10, 'How are multi-line comments defined in Kotlin?', NULL, '{}', '[]', '/*', '<>', 3, '2024-04-18 04:59:47', '2024-04-18 04:59:47'),
(11, 'd797cfbf1022', 2, 1, 'Which operator is used to add together two values?', NULL, 'The ADD keyword', 'The + sign', 'The * sign', 'The & sign', 2, '2024-04-18 05:01:53', '2024-04-18 05:01:53'),
(12, 'bfb83e660ca9', 2, 2, 'What is the output of the following code: println(5 > 3 && 5 < 10)', NULL, 'False', '5', '2', 'True', 4, '2024-04-18 05:02:55', '2024-04-18 05:02:55'),
(13, '50bf98aa4b56', 2, 3, 'Which operator can be used to compare two values?', NULL, '==', '><', '=', '<>', 1, '2024-04-18 05:03:52', '2024-04-18 05:03:52'),
(14, 'abaab3cd883f', 2, 4, 'Refer to the code, what message will be printed if both isSunny and isRainy are set to false?', NULL, 'Wear sunglasses!', 'Grab an umbrella!', 'Enjoy the day!', 'The code will not compile.', 3, '2024-04-18 05:05:19', '2024-04-18 05:05:19'),
(15, '9b59b31097fa', 2, 5, 'What is the primary purpose of this code', NULL, 'It defines a function named main that prints a greeting message.', 'It declares two variables, firstName and lastName, without any output.', 'It is a syntax error and will not compile.', 'It creates a loop to concatenate strings multiple times.', 1, '2024-04-18 05:07:01', '2024-04-18 05:07:01'),
(16, '3f03a9a534a6', 2, 6, 'What is the data type of the variable ‘myInteger’ in the provided Kotlin code?', NULL, 'Float', 'Double', 'Int', 'String', 3, '2024-04-18 05:08:23', '2024-04-18 05:08:23'),
(17, '5ec54db38c92', 2, 7, 'Which variable holds the value ‘A’ in the given Kotlin code?', NULL, 'myDouble', 'myString', 'myChar', 'myInteger', 3, '2024-04-18 05:09:16', '2024-04-18 05:09:16'),
(18, 'd18eb44994bc', 2, 8, 'Which operator is used for the range creation in Kotlin?', NULL, '..', ':', '-', '+', 1, '2024-04-18 05:10:13', '2024-04-18 05:10:13'),
(19, '7d226c492fad', 2, 9, 'In Kotlin, what is the purpose of the ‘fun main()’ function?', NULL, 'To define a class', 'To declare a variable', 'To specify the entry point of the program', 'To perform arithmetic operations', 3, '2024-04-18 05:11:11', '2024-04-18 05:11:11'),
(20, 'cd6e11c97c89', 2, 10, 'Which of the following is NOT a valid Kotlin operator?', NULL, '&&(Logical AND)', '**', '+=(Compound assignment)', '..', 2, '2024-04-18 05:12:19', '2024-04-18 05:12:19'),
(21, 'bf78c599ebd0', 3, 1, 'What are the primary conditional statements in Kotlin?', NULL, 'if, else, loop', 'while, for, when', 'if, else, if, else', 'when, for, loop', 3, '2024-04-18 05:14:09', '2024-04-18 05:14:09'),
(22, 'f2dc92c3fc7d', 3, 2, 'What does the ‘when’ expression in Kotlin replace?', NULL, 'If-else statements', 'while loop', 'for loop', 'continue statement', 1, '2024-04-18 05:14:53', '2024-04-18 05:14:53'),
(23, '25b0fb703297', 3, 3, 'What is the primary purpose of a ‘while’ loop in Kotlin?', NULL, 'To declare variables', 'To iterate through elements', 'To repeat a set of instructions as long as a condition is true', 'To concatenate strings', 3, '2024-04-18 05:16:00', '2024-04-18 05:16:00'),
(24, 'e66ed892e457', 3, 4, 'How is a ‘while’ loop syntax structured in Kotlin?', NULL, 'while (condition) {}', 'loop {}', 'for (condition) {}', 'when (condition) {}', 1, '2024-04-18 05:17:16', '2024-04-18 05:17:16'),
(25, '93181f6587fc', 3, 5, 'What is the primary purpose of the ‘break’ statement in Kotlin?', NULL, 'To stop a loop before it finishes', 'To continue to the next iteration of a loop', 'To declare a constant value', 'To concatenate strings', 1, '2024-04-18 05:18:06', '2024-04-18 05:18:06'),
(26, '5b1a99bde60b', 3, 6, 'What does the ‘continue’ statement do in Kotlin?', NULL, 'It stops the loop immediately', 'It skips the remaining code inside the loop for the current iteration and moves to the next one', 'It prints a message outside the loop', 'It concatenate strings', 2, '2024-04-18 05:19:23', '2024-04-18 05:19:23'),
(27, '8e8bb5cb0924', 3, 7, 'What is the primary advantage of using the ‘when’ expression over multiple ‘if-else’ statements?', NULL, 'It reduces mistakes', 'It concatenates strings more efficiently', 'It’s more readable and concise', 'It declares variables', 3, '2024-04-18 05:20:26', '2024-04-18 05:20:26'),
(28, 'fea3713ed3b2', 3, 8, 'What is the purpose of the ‘else’ statement in Kotlin conditional statement?', NULL, 'To declare a variable', 'To define a loop', 'To execute code when the preceding conditions are false', 'To concatenate strings', 3, '2024-04-18 05:21:13', '2024-04-18 05:21:13'),
(29, 'a2ddd1ebd2c9', 3, 9, 'What is the syntax for a ‘for’ loop in Kotlin?', NULL, 'for (x In range)', 'loop (x In range)', 'for x In range', 'for (x In iterable)', 1, '2024-04-18 05:22:18', '2024-04-18 05:22:18'),
(30, 'f6af17fa0336', 3, 10, 'How do you create an array in Kotlin?', NULL, 'Array = [1, 2, 3]', 'arrayOf(1, 2, 3)', 'createArray(1, 2, 3)', 'new Array(1, 2, 3)', 2, '2024-04-18 05:23:08', '2024-04-18 05:23:08'),
(31, '2a1b311fb9d4', 4, 1, 'What is the purpose of using arrays in Kotlin?', NULL, 'To create individual variables for each value', 'To eliminate the need for multiple variables and store numerous values within a single variable', 'To simplify the syntax of variable declaration', 'To perform mathematical operations efficiently', 2, '2024-04-18 05:27:48', '2024-04-18 05:27:48'),
(32, 'c9494a6997d6', 4, 2, 'How do you create an array in Kotlin using the ‘arrayOf()’ function?', NULL, 'val fruits = [ \"Apple\", \"Banana\", \"Orange\", \"Grapes\" ]', 'val fruits = arrayOf(\"Apple\", \"Banana\", \"Orange\", \"Grapes\")', 'val fruits = { \"Apple\", \"Banana\", \"Orange\", \"Grapes\" }', 'val fruits = array(\"Apple\", \"Banana\", \"Orange\", \"Grapes\")', 2, '2024-04-18 05:28:51', '2024-04-18 05:28:51'),
(33, '42205d41d8e3', 4, 3, 'What is the output of the following code snippet?', NULL, 'Banana', 'Apple', 'Grapes', 'Orange', 4, '2024-04-18 05:30:19', '2024-04-18 05:30:19'),
(34, 'de479573305c', 4, 4, 'How do you change the value of a specific element in an array?', NULL, 'By using the ‘setValue()’ function', 'By directly assigning a new value using the assignment operator', 'By referring to the index number and assigning a new value', 'By using the ‘modifyValue()’ method', 3, '2024-04-18 05:31:19', '2024-04-18 05:31:19'),
(35, '526633f9c8b1', 4, 5, 'What property is used to determined the number of elements in an array?', NULL, 'length', 'count', 'size', 'elements', 3, '2024-04-18 05:32:15', '2024-04-18 05:32:15'),
(36, '2dd790cb3157', 4, 6, 'How can you iterate through each element of an array in Kotlin?', NULL, 'Using the ‘forEach’ method', 'Using a ‘while’ loop', 'Using a ‘for’ loop', 'Using a ‘do-while’ loop', 3, '2024-04-18 05:33:37', '2024-04-18 05:33:37'),
(37, 'e4c083001584', 4, 7, 'In Kotlin, what does the ‘for’ loop primarily iterate through?', NULL, 'Individual characters in a string', 'Arrays, ranges, or entitles with a countable number of values', 'Files and directories in the file system', 'Items in a linked list', 2, '2024-04-18 05:34:30', '2024-04-18 05:34:30'),
(38, 'bdd5522310a8', 4, 8, 'In the Kotlin ‘for’ loop example, what does ‘5 downTo 1’ signify?', NULL, 'It prints numbers from 5 to 1', 'It prints numbers from 1 to 5', 'It prints numbers in a random order', 'It prints the number 5 multiple times', 1, '2024-04-18 05:35:16', '2024-04-18 05:35:16'),
(39, '1ab95d0c2738', 4, 9, 'What is a range in Kotlin?', NULL, 'A sequence of values defined by a start, end, and optional step', 'A list of elements in random order', 'An array with a fixed size', 'A group of related functions', 1, '2024-04-18 05:36:00', '2024-04-18 05:36:00'),
(40, '81d99b38a9f6', 4, 10, 'When using the range syntax, why is it important to include the first and last values?', NULL, 'It is not important; the range automatically includes all values', 'To avoid syntax errors', 'To define the boundaries of the range', 'To optimize performance', 3, '2024-04-18 05:36:49', '2024-04-18 05:36:49'),
(41, 'b728c99eb957', 5, 1, 'How is an instance of the Dog class created in the main function?', NULL, 'val myDog = Dog(\"Buddy\", 3)', 'val myDog = Dog.create(\"Buddy\", 3)', 'val myDog = createDog(\"Buddy\", 3)', 'val myDog = Dog.initialize(\"Buddy\", 3)', 1, '2024-04-18 05:38:28', '2024-04-18 05:38:28'),
(42, '1e3f51df6221', 5, 2, 'How do you call the bark method on the myDog instance?', NULL, 'bark(myDog)', 'myDog.call(bark)', 'myDog.bark()', 'Dog.bark(myDog)', 3, '2024-04-18 05:39:15', '2024-04-18 05:39:15'),
(43, '6dbd739eaf5b', 5, 3, 'What will be printed when the following code is executed?', NULL, 'Ford, Mustang, BMW', 'Mustang, X5', 'BMW', 'Ford, BMW', 4, '2024-04-18 05:40:18', '2024-04-18 05:40:18'),
(44, '17969f6424f6', 5, 4, 'How do you create an object of the Car class in Kotlin?', NULL, 'val c1 = Car.create()', 'val c1 = Car()', 'val c1 = Car.newCar()', 'val c1 = Car.instance()', 2, '2024-04-18 05:41:21', '2024-04-18 05:41:21'),
(45, '9d6ffc3f0380', 5, 5, 'How would you create an object c1 of the Car class in the main function?', NULL, 'val c1 = Car.create(\"Ford\", \"Mustang\", 1969)', 'val c1 = Car(\"Ford\", \"Mustang\", 1969)', 'val c1 = Car.instance(\"Ford\", \"Mustang\", 1969)', 'val c1 = Car.newCar(\"Ford\", \"Mustang\", 1969)', 2, '2024-04-18 05:42:12', '2024-04-18 05:42:12'),
(46, '840c0017855a', 5, 6, 'In the given code, what is the primary purpose of the Car class?', NULL, 'To define a blueprint for creating multiple cars', 'To create a single instance of a car.', 'To define functions for car-related operations.', 'To initialize properties for car-related calculations.', 1, '2024-04-18 05:43:27', '2024-04-18 05:43:27'),
(47, '0c7966c1f0b7', 5, 7, 'How would you call the speed function with a maximum speed of 150?', NULL, 'c1.speed()', 'c1.speed(150)', 'Car.speed(150)', 'Car.speed()', 2, '2024-04-18 05:44:17', '2024-04-18 05:44:17'),
(48, '4e5721410495', 5, 8, 'What is the purpose of the drive function in the Car class?', NULL, 'To print information about the car\'s brand, model, and year.', 'To calculate the distance the car can travel.', 'To print the sound of the car engine.', 'To initialize the properties of the car.', 3, '2024-04-18 05:45:23', '2024-04-18 05:45:23'),
(49, 'f9b3de51562f', 5, 9, 'How is an object of MyChildClass created in the main function?', NULL, 'val myObj = MyChildClass.newObject()', 'val myObj = MyChildClass.create()', 'val myObj = MyChildClass()', 'val myObj = MyParentClass()', 3, '2024-04-18 05:46:13', '2024-04-18 05:46:13'),
(50, '432356d25dee', 5, 10, 'Which keyword is used to denote that MyParentClass is open for inheritance?', NULL, 'open', 'super', 'extends', 'inherit', 1, '2024-04-18 05:46:56', '2024-04-18 05:46:56');

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` bigint UNSIGNED NOT NULL,
  `reference_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `programming_language_id` bigint UNSIGNED NOT NULL,
  `question_number` int NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `code_snippet` text COLLATE utf8mb4_unicode_ci,
  `choice_1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `choice_2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `choice_3` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `choice_4` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `correct_answer` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `reference_number`, `programming_language_id`, `question_number`, `question`, `code_snippet`, `choice_1`, `choice_2`, `choice_3`, `choice_4`, `correct_answer`, `created_at`, `updated_at`) VALUES
(1, 'aeda0bbd0b76', 1, 1, 'What is the purpose of the following code snippet?', 'fun main() {\r\n    println(\"Hello World!\")\r\n}', 'It defines a function called ‘main’ which prints “Hello World!” to the console.', 'It defines a variable called ‘main’ and assigns it the value “Hello World!”.', 'It declares a class called ‘HelloWorld’ with a function called ‘main’', 'It declares a variable called ‘Hello World!’ with the value ‘main’.', 1, '2024-04-18 05:49:34', '2024-04-18 05:49:34'),
(2, 'be4aaa9f6b7b', 1, 2, 'What is the difference between ‘println()’ and ‘print()’ functions in Kotlin?', NULL, 'There is no difference between them', '‘println()’ prints text with a newline character at the end, while ‘print()’ does not add a newline.', '‘print()’ prints text with a newline character at the end, while ‘println()’ does not add a newline.', '‘println()’ and ‘print()’ are not valid functions in Kotlin', 2, '2024-04-18 05:50:16', '2024-04-18 05:50:16'),
(3, 'eb14c57ddcf4', 1, 3, 'What symbol is used to start a single-line comment in Kotlin?', NULL, '#', '/* */', '//', '–', 3, '2024-04-18 05:50:51', '2024-04-18 05:50:51'),
(4, 'ae083a7f01ee', 1, 4, 'Which keyword is used to declare an immutable variable in Kotlin?', NULL, 'let', 'var', 'const', 'val', 4, '2024-04-18 05:51:27', '2024-04-18 05:51:27'),
(5, 'ea62abade2bd', 1, 5, 'What data type does the variable ‘birthyear’ have in the following Kotlin Code?', 'val birthyear = 1975', 'String', 'Double', 'Int', 'Char', 3, '2024-04-18 05:52:06', '2024-04-18 05:52:06'),
(6, '60143161e648', 1, 6, 'What is the result of the following Kotlin code snippet?', 'val a = 10\r\nval b = 5\r\nval result = a / b', '2.0', '2', '2.5', 'Error: Division by zero', 2, '2024-04-18 05:52:50', '2024-04-18 05:52:50'),
(7, '7cc001691d3f', 1, 7, 'What does the following Kotlin code snippet demonstrate?', 'val range = 1..5', 'It declares a variable named ‘range’ with a value of 1 to 5.', 'It creates a range from 1 to 5, inclusive.', 'It initializes a list containing integers from 1 to 5.', 'It defines a function that prints numbers from 1 to 5.', 2, '2024-04-18 05:53:26', '2024-04-18 05:53:26'),
(8, 'cee22d72552d', 1, 8, 'What is the output of the following Kotlin code snippet?', 'val firstName = \"John\"\r\nval lastName = \"Doe\"\r\nval fullName = firstName + \" \" + lastName\r\nprintln(\"Hello, $fullName!\")', 'Hello, fullName!', 'Hello, JohnDoe!', 'Hello, $fullName!', 'Hello, John Doe!', 4, '2024-04-18 05:54:07', '2024-04-18 05:54:07'),
(9, '2cf32c103101', 1, 9, 'What are Booleans used for in Kotlin?', NULL, 'Booleans are used for mathematical calculations.', 'Booleans are used for string manipulation', 'Booleans are used for conditional statements and program flow control.', 'Booleans are used for declaring variables.', 3, '2024-04-18 05:54:42', '2024-04-18 05:54:42'),
(10, 'ca7a32262474', 1, 10, 'Which operator is used for logical AND in Kotlin?', NULL, '&&', '||', '!', '=', 1, '2024-04-18 05:55:17', '2024-04-18 05:55:17'),
(11, '4754ef2595ce', 1, 11, 'What is the purpose of multi-line comments in Kotlin?', NULL, 'They are used to annotate individual lines of code.', 'They are used to execute multiple lines of code simultaneously.', 'They are used to provide detailed explanations or temporarily disable blocks of code.', 'They are used to define variables spanning multiple lines.', 3, '2024-04-18 05:55:54', '2024-04-18 05:55:54'),
(12, '324062494610', 1, 12, 'Which keyword is used to declare a mutable variable in Kotlin?', NULL, 'let', 'var', 'const', 'val', 2, '2024-04-18 05:56:25', '2024-04-18 05:56:25'),
(13, '176aae98e224', 1, 13, 'In Kotlin, what type of value can a Boolean variable hold?', NULL, 'Only ‘true’', 'Only ‘false’', 'Either ‘true’ or ‘false’', 'Only 1 and 0', 3, '2024-04-18 05:57:05', '2024-04-18 05:57:05'),
(14, '5caf0adf3a60', 1, 14, 'What is the output of the following Kotlin code snippet?', 'var x = 5\r\nx++\r\nprintln(\"x after increment: $x\")', 'x after increment: 5', 'x after increment: 6', 'x after increment: 4', 'Error: x++ is an invalid operation', 2, '2024-04-18 05:57:54', '2024-04-18 05:57:54'),
(15, 'd95d9b432fa5', 1, 15, 'What does the ‘!=’ operator represent in Kotlin?', NULL, 'Equality', 'Inequality', 'Less than', 'Greater than', 2, '2024-04-18 05:58:31', '2024-04-18 05:58:31'),
(16, 'fc3301dea723', 1, 16, 'What is the output of the following Kotlin code?', 'fun main() {\r\n    val temperature = 25\r\n\r\n    if (temperature > 30) {\r\n        println(\"It\'s a hot day!\")\r\n    } else if (temperature in 20..30) {\r\n        println(\"The weather is pleasant.\")\r\n    } else {\r\n        println(\"It\'s a bit chilly.\")\r\n    }\r\n}', 'It’s a hot day!', 'The weather is pleasant.', 'It’s a bit chilly.', 'Compilation error.', 2, '2024-04-18 05:59:10', '2024-04-18 05:59:10'),
(17, 'cc66dba671ef', 1, 17, 'Which Kotlin expression provides a more readable way to choose and execute one of several code blocks?', NULL, 'if..else statement', 'when expression', 'while loop', 'for loop', 2, '2024-04-18 05:59:44', '2024-04-18 05:59:44'),
(18, '02b27b77af13', 1, 18, 'what is the output of the following Kotlin code?', 'fun main() {\r\n	val dayOfWeek = 5\r\n \r\n	val dayType = when (dayOfWeek) {\r\n    	1 -> \"Monday\"\r\n    	2 -> \"Tuesday\"\r\n    	3 -> \"Wednesday\"\r\n    	4 -> \"Thursday\"\r\n    	5 -> \"Friday\"\r\n    	else -> \"Weekend\"\r\n	}\r\n	println(\"Day $dayOfWeek is $dayType\")\r\n}', 'Day 5 is Monday', 'Day 5 is Friday', 'Day 5 is Weekend', 'Compilation error.', 2, '2024-04-18 06:00:29', '2024-04-18 06:00:29'),
(19, 'ea830cb60e44', 1, 19, 'What is the purpose of the else keyword in Kotlin\'s conditional statements?', NULL, 'It represents the default condition when none of the previous conditions are true.', 'It terminates the program execution immediately.', 'It indicates the end of a code block.', 'It allows multiple conditions to be evaluated in sequence.', 1, '2024-04-18 06:01:07', '2024-04-18 06:01:07'),
(20, '0f3394b03735', 1, 20, 'Which of the following is NOT a valid use of the when expression in Kotlin?', NULL, 'Matching against constants.', 'Matching against ranges.', 'Matching against boolean expressions.', 'Matching against complex conditions using logical operators.', 3, '2024-04-18 06:01:38', '2024-04-18 06:01:38'),
(21, '1aab25176b90', 1, 21, 'Which function is used to determine the number of elements in an array in Kotlin?', NULL, 'sizeOf()', 'count()', 'length()', 'size()', 4, '2024-04-18 06:02:10', '2024-04-18 06:02:10'),
(22, '4cb462849aa5', 1, 22, 'Answer: D What is the output of the following Kotlin code?', 'fun main() {\r\n	val fruits = arrayOf(\"Apple\", \"Banana\", \"Orange\", \"Grapes\")\r\n	for (x in fruits) {\r\n    	println(x)\r\n	}\r\n}', 'Apple Banana Orange Grapes', 'Grapes Orange Banana Apple', 'Compilation error.', 'No output.', 1, '2024-04-18 06:02:56', '2024-04-18 06:02:56'),
(23, '4ee9630c5b78', 1, 23, 'What is the syntax for creating a range from 1 to 5 (inclusive) in Kotlin?', 'val myRange = __________', '1 to 5', '1=5', '1..5', '1-5', 3, '2024-04-18 06:03:37', '2024-04-18 06:03:37'),
(24, '332f1726bdb6', 1, 24, 'How can you check if a value exists within a range in Kotlin?', NULL, 'Using the contains() function', 'Using the exists() function', 'Using the in operator', 'Using the find() function', 3, '2024-04-18 06:04:07', '2024-04-18 06:04:07');

-- --------------------------------------------------------

--
-- Table structure for table `exam_scores`
--

CREATE TABLE `exam_scores` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `score` int NOT NULL,
  `attempt_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_scores`
--

INSERT INTO `exam_scores` (`id`, `user_id`, `score`, `attempt_date`, `created_at`, `updated_at`) VALUES
(1, 9, 24, '2024-04-22', '2024-04-22 09:00:00', '2024-04-22 09:00:00'),
(2, 9, 22, '2024-04-22', '2024-04-22 09:05:52', '2024-04-22 09:05:52'),
(3, 9, 24, '2024-04-22', '2024-04-22 09:07:39', '2024-04-22 09:07:39'),
(4, 9, 24, '2024-04-22', '2024-04-22 09:13:50', '2024-04-22 09:13:50'),
(5, 11, 24, '2024-04-22', '2024-04-22 09:26:05', '2024-04-22 09:26:05');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `getting_starteds`
--

CREATE TABLE `getting_starteds` (
  `id` bigint UNSIGNED NOT NULL,
  `programming_language_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Getting Started',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `getting_starteds`
--

INSERT INTO `getting_starteds` (`id`, `programming_language_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Getting Started', '2024-04-18 03:55:11', '2024-04-18 03:55:11');

-- --------------------------------------------------------

--
-- Table structure for table `getting_started_steps`
--

CREATE TABLE `getting_started_steps` (
  `id` bigint UNSIGNED NOT NULL,
  `getting_started_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `getting_started_steps`
--

INSERT INTO `getting_started_steps` (`id`, `getting_started_id`, `name`, `description`, `image`, `order`, `created_at`, `updated_at`) VALUES
(4, 1, 'a. Get IntelliJ IDEA and install it:', '1. Check JetBrains\' website: The official JetBrains website is https://www.jetbrains.com/idea/.', 'images/9UBkqH9sXmXeMfNbs4OhqJynkVGqPkLnuRMFCnpY.png', 1, '2024-05-14 18:10:02', '2024-05-14 18:10:02'),
(5, 1, 'Download IntelliJ IDEA:', 'Choose the right IntelliJ IDEA version (Community Edition is free and works for most projects). Follow the on-screen instructions after clicking  \"Download\".', 'images/euHsb3Fw9U1bDavOcsAijY3cqPckA9Pz33nlx2Od.png', 2, '2024-05-14 18:20:27', '2024-05-14 18:20:27'),
(6, 1, 'Install IntelliJ IDEA', 'By running the installer and following the instructions after downloading. This usually involves running the installer and following the Windows setup tutorial.', NULL, 3, '2024-05-14 18:22:26', '2024-05-14 18:22:26'),
(7, 1, 'b. Start a project in IntelliJ IDEA by opening it:', '4. Launch IntelliJ IDEA after installation. Setting up the keymap and default theme may be required when you first start it.', 'images/kJWHWZS56tFlfEKfbx8sTNCHmvtA5zYSOmC8CXeh.png', 4, '2024-05-14 18:24:08', '2024-05-14 18:24:08'),
(8, 1, 'Install JDK if needed:', 'If not already, configure a JDK in IntelliJ IDEA. Go to \"Project\" > \"Project SDK\" after choosing or downloading the JDK under \"File\" > \"Project Structure.\"', 'images/xhdIMxVnJt3694scxlJkgfs6borLMX5nYfvCLDp0.png', 5, '2024-05-14 18:27:04', '2024-05-14 18:27:04'),
(9, 1, 'Create a new project: Select \"Create New Project\" on the welcome screen.', '• Choose Kotlin, Java, etc. and hit \"Next.\"\n• Set project parameters like name, location, and needed libraries.\n• The project is created by clicking \"Finish.\"', NULL, 6, '2024-05-14 18:30:41', '2024-05-14 18:30:41'),
(10, 1, 'Write Your First Line of Code: The project structure will appear on the left side after creation.', '• Open a new Kotlin or Java file, go to \"src\" and choose the default package.\n• Write a \"Hello, World!\" or other code.', 'images/P1JSuXJTA5pla1DjYh1sHSmpMwKKXyb6EbtFPPqQ.png', 7, '2024-05-14 18:33:02', '2024-05-14 18:33:02'),
(12, 1, 'Run Your Program: Right-click on your code file and select \"Run.\"', 'The console at the bottom displays program output.That\'s it! Once IntelliJ IDEA has been downloaded, installed, and a project has been created, you can begin coding and experimenting with its features.', 'images/Wgw6IzLGjgMviR2hFhromrna56uIIx4iFeBO7M0O.png', 8, '2024-05-15 03:56:47', '2024-05-15 03:56:47');

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

CREATE TABLE `lessons` (
  `id` bigint UNSIGNED NOT NULL,
  `reference_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chapter_id` bigint UNSIGNED NOT NULL,
  `lesson_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lesson_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lesson_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lesson_video` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lesson_example_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lesson_output` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lesson_explanation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lessons`
--

INSERT INTO `lessons` (`id`, `reference_number`, `chapter_id`, `lesson_number`, `lesson_title`, `lesson_description`, `lesson_video`, `lesson_example_code`, `lesson_output`, `lesson_explanation`, `created_at`, `updated_at`) VALUES
(1, '76185f3dc406', 1, '1.1', 'Kotlin Syntax', 'Syntax serves as the foundation of Kotlin\'s code structure, providing a clear and simple method for composing computer instructions. Its expressive style and easy-to-understand structure allow developers to create readable and effective systems.', 'videos/e3cIPF81NRXdliJ4AEGq47PyeF9ak3R1RyoYEH5N.mp4', 'fun main() {\r\n  println(\"Hello World!\")\r\n}', 'Hello World!', 'In Kotlin, \'fun main()\' represents the program\'s entry point, where execution begins. \'println(\"Hello World\")\' is a statement within the \'main\' function that prints the text \"Hello World\" to the console. In this scenario, the \'println\' function is used to show text, and it outputs the supplied string to the console, making it visible to the user running the application.', '2024-04-18 04:14:07', '2024-04-18 04:14:07'),
(2, 'e31ec4abb4f8', 1, '1.2', 'Printing in Kotlin', 'With Kotlin\'s \'println\' method, developers may show off information while their programs are running by displaying text or variables on the console. A print() function that is comparable to println() is also available. The sole distinction is that the output ends without a new line being inserted:', 'videos/BeZduPG0HHMeE5HK7n8XfLIL0Cx6S5F2XUraWVCS.mp4', 'fun main() {\r\n  println(\"Hello World!\")\r\n  print(\"I am learning Kotlin. \")\r\n  print(\"It is awesome!\")\r\n}', 'Hello World!\r\nI am learning Kotlin. It is awesome!', 'In this code, fun main() marks where the program starts. The println function displays \"Hello World!\" followed by two print functions, which don\'t add a newline, so \"I am learning Kotlin. It is awesome!\" appears without a line break.', '2024-04-18 04:15:23', '2024-04-18 04:15:23'),
(3, '88302c9a5200', 1, '1.3', 'Annotating Your Code in Kotlin', '1.3.1 Single-line Comments:\r\nKotlin single-line comments, which start with double slashes (//), are used to annotate or explain code that isn\'t going to be executed. This helps developers understand why certain lines are there.\r\n1.3.2 Multi-line Comments:\r\nIn Kotlin, multi-line comments are delimited by /* and */, allowing programmers to disable many lines of code or offer more detailed explanations.', 'videos/JFuLRxMWZHXNCr8MOBLUS0SWkQbzckfs5W8sLnak.mp4', '1.3.1:\r\n// This is a single comment\r\nprintln(“Hello World!”)\r\n\r\nprintln(“Hello World!”)  // This is a comment\r\n\r\n1.3.2:\r\n/*\r\nThis is a multi-line comment\r\nspanning multiple lines.\r\n*/\r\nprintln(\"Hello World!\")', '1.3.1:\r\nHello World!\r\nHello World!\r\n\r\n1.3.2:\r\nHello World!', '1.3.1:\r\nText that follows // in Kotlin is a comment that the program ignores. In both example codes, the code displays \"Hello World!\" Without compromising the code\'s functioning, the second line\'s remark makes the code\'s goal more clear.\r\n1.3.2:\r\n The /* and */ in this example contain the comment, enabling the developer to add comments or temporarily disable several lines of code. \"Hello World!\" will be printed to the console when the \'println\' command outside the comment is executed.', '2024-04-18 04:16:53', '2024-04-18 04:16:53'),
(4, 'a8abf739355d', 1, '1.4', 'Kotlin Variable Declarations', 'In Kotlin, there are two main types of variables: \r\nval (Immutable): Variables declared with val are read-only and cannot have their assignments changed once they have been initialized. Constants are comparable to them.\r\nvar (Mutable): Once initialized, variables declared with var can be assigned new values. They offer adaptability for values that might alter while the program is running.\r\nData values are kept in containers called variables. Use var or val to create a variable, then use the equal symbol (=) to give it a value.', 'videos/AlWGtlw3EvzuVhM9M7ijuP993lXRtWiwqXA691ym.mp4', '/* Syntax:\r\nvar variableName = value\r\nval variableName = value\r\n*/\r\nvar name = \"John\"\r\nval birthyear = 1975\r\n\r\nprintln(name)          // Print the value of name\r\nprintln(birthyear)     // Print the value of birthyear', 'John\r\n1975', 'The variable {name` is declared and given the value \"John,\" whereas the constant `birthyear} is assigned the value 1975. The variables {name} and {birthyear} are printed to the terminal using two `println` expressions.', '2024-04-18 04:18:20', '2024-04-18 04:18:20'),
(5, 'a9affa201742', 2, '2.1', 'Data Types in Kotlin', 'Data types in Kotlin provide the kinds of values that can be stored in a variable, including characters, strings, integers, and floating-point numbers.', 'videos/zbVsKeHrhdX4r7uxlb5Mc02ANyqMM5JuQGSyYokw.mp4', 'Fun main() {\r\nval myInteger: Int = 42\r\nval myDouble: Double = 3.14\r\nval myChar: Char = \'A\'\r\nval myString: String = \"Hello, Kotlin!\"\r\n\r\nprintln(“Integer: $myInteger”)\r\nprintln(“Double: $myDouble”)\r\nprintln(“Char: $myChar”)\r\nprintln(“String: $myString”)\r\n}', 'Integer: 42\r\nDouble: 3.14\r\nChar: A\r\nString: Hello, Kotlin!', '\'myInteger\' is an integer variable holding the value 42.\r\n\'myDouble\' is a double variable holding the value 3.14.\r\n\'myChar\' is a character variable holding the value \'A\'.\r\n\'myString\' is a string variable holding the value \"Hello, Kotlin!\"', '2024-04-18 04:19:56', '2024-04-18 04:19:56'),
(6, '979fe0378340', 2, '2.2', 'Operators in Kotlin', 'Operators are symbols or keywords that operate on variables and values in the Kotlin programming language. In a clear and expressive way, they make activities like arithmetic computations, value comparisons, and logical operations possible.\r\n\r\nThe following are some typical Kotlin operator symbols, along with a brief description:\r\n\r\n2.2.1 Arithmetic Operators:\r\n+: Addition (e.g., a + b)\r\n-: Subtraction (e.g., a - b)\r\n*: Multiplication (e.g., a * b)\r\n/: Division (e.g., a / b)\r\n%: Modulus (returns the remainder after division, e.g., a % b)\r\n\r\n2.2.2 Comparison Operators:\r\n==: Equality (e.g., a == b)\r\n!=: Inequality (e.g., a != b)\r\n<: Less than (e.g., a < b)\r\n>: Greater than (e.g., a > b)\r\n<=: Less than or equal to (e.g., a <= b\r\n>=: Greater than or equal to (e.g., a >= b)\r\n\r\n2.2.3 Logical Operators:\r\n&&: Logical AND (e.g., condition1 && condition2)\r\n||: Logical OR (e.g., condition1 || condition2)\r\n!: Logical NOT (negates a boolean value, e.g., !condition)\r\n\r\n2.2.4 Assignment Operators:\r\n=: Assigns a value to a variable (e.g., a = 5)\r\n+=, -=, *=, /=, %=: Compound assignment operators (e.g., a += 2 is equivalent to a = a + 2)\r\n\r\n2.2.5 Increment and Decrement Operators:\r\n++: Increment (e.g., a++ or ++a)\r\n--: Decrement (e.g., a-- or --a)\r\n\r\n2.2.6 Range Operator:\r\n\r\n..: Creates a range of values (e.g., 1..5 represents the range from 1 to 5)', '{\"errors\":[\"The video field must not be greater than 50000 kilobytes.\"]}', 'fun main() {\r\n    // 2.2.1 Arithmetic Operators:\r\n    val a = 10\r\n    val b = 5\r\n    val sum = a + b\r\n    val difference = a - b\r\n    val product = a * b\r\n    val quotient = a / b\r\n    val remainder = a % b\r\n\r\n    println(\"Arithmetic Operators:\")\r\n    println(\"Sum: $sum\")\r\n    println(\"Difference: $difference\")\r\n    println(\"Product: $product\")\r\n    println(\"Quotient: $quotient\")\r\n    println(\"Remainder: $remainder\")\r\n    println()\r\n\r\n    // 2.2.2 Comparison Operators:\r\n    val isEqual = (a == b)\r\n    val isNotEqual = (a != b)\r\n    val isGreaterThan = (a > b)\r\n    val isLessThan = (a < b)\r\n    val isGreaterOrEqual = (a >= b)\r\n    val isLessOrEqual = (a <= b)\r\n\r\n    println(\"Comparison Operators:\")\r\n    println(\"Is Equal: $isEqual\")\r\n    println(\"Is Not Equal: $isNotEqual\")\r\n    println(\"Is Greater Than: $isGreaterThan\")\r\n    println(\"Is Less Than: $isLessThan\")\r\n    println(\"Is Greater or Equal: $isGreaterOrEqual\")\r\n    println(\"Is Less or Equal: $isLessOrEqual\")\r\n    println()\r\n\r\n    // 2.2.3 Logical Operators:\r\n    val condition1 = true\r\n    val condition2 = false\r\n    val logicalAnd = condition1 && condition2\r\n    val logicalOr = condition1 || condition2\r\n    val logicalNot = !condition1\r\n\r\n    println(\"Logical Operators:\")\r\n    println(\"Logical AND: $logicalAnd\")\r\n    println(\"Logical OR: $logicalOr\")\r\n    println(\"Logical NOT: $logicalNot\")\r\n    println()\r\n\r\n    // 2.2.4 Assignment Operators:\r\n    var x = 5\r\n    x += 3\r\n    val y = 8\r\n    x -= y\r\n\r\n    println(\"Assignment Operators:\")\r\n    println(\"x after += 3: $x\")\r\n    println(\"x after -= y: $x\")\r\n    println()\r\n\r\n    //2.2.5 Increment and Decrement Operators:\r\n    var x = 5\r\n\r\n    // Pre-increment\r\n    ++x\r\n    println(\"After Pre-increment: $x\")\r\n\r\n    // Post-increment\r\n    x++\r\n    println(\"After Post-increment: $x\")\r\n\r\n    // Post-decrement\r\n    x--\r\n    println(\"After Post-decrement: $x\")\r\n\r\n    // Pre-decrement\r\n    --x\r\n    println(\"After Pre-decrement: $x\")\r\n\r\n\r\n\r\n    // 2.2.6 Range Operator:\r\n    val range = 1..5\r\n\r\n    println(\"Range Operator:\")\r\n    println(\"Range from 1 to 5: $range\")\r\n}', '2.2.1 Arithmetic Operators:\r\nSum: 15\r\nDifference: 5\r\nProduct: 50\r\nQuotient: 2\r\nRemainder: 0\r\n\r\n2.2.2 Comparison Operators:\r\nIs Equal: false\r\nIs Not Equal: true\r\nIs Greater Than: true\r\nIs Less Than: false\r\nIs Greater or Equal: true\r\nIs Less or Equal: false\r\n\r\n2.2.3 Logical Operators:\r\nLogical AND: false\r\nLogical OR: true\r\nLogical NOT: false\r\n\r\n2.2.4 Assignment Operators:\r\nx after += 3: 8\r\nx after -= y: 0\r\n\r\n2.2.5 Increment and Decrement Operators:\r\nAfter Pre-increment: 6\r\nAfter Post-increment: 7\r\nAfter Post-decrement: 6\r\nAfter Pre-decrement: 5\r\n\r\n2.2.6 Range Operator:\r\nRange from 1 to 5: 1..5', 'Every portion of the accompanying Kotlin code shows how to use various operators.\r\n\r\n2.2.1 Explanation for Arithmetic Operators: These operations provide an overview of fundamental mathematical calculations. The sum is the outcome of multiplying variables a and b; the difference is the result of subtracting b from a; the product is the outcome of dividing a by b; and the remainder is the value that remains after the division.\r\n\r\n2.2.2 Explanation for Operators for comparison: These operators assess how variables relate to one another. The \"Is Equal\" and \"Is Not Equal\" statements determine whether or not a and b are equal. The comparison of a and b\'s numbers is evaluated by the \"Is Greater Than,\" \"Is Less Than,\" \"Is Greater or Equal,\" and \"Is Less or Equal\" statements.\r\n\r\n2.2.3 Explanation for Logical Operators: Boolean values are handled by logical operators. Condition 1 and Condition 2 are combined into the \"Logical AND\" and \"Logical OR\" expressions. The \"Logical NOT\" disproves condition 1\'s validity.\r\n\r\n2.2.4 Explanation for Operators for assignments: These operators change the values of variables. Using the += operator, x is first increased by 3; subsequently, x is decreased by the value of y (8) using the -= operator.\r\n\r\n2.2.5 Explanation for Operators with increment and decrement: These operators change a variable\'s value. count is increased by 1 at first, and the result is given the new count value following additional incrementation.\r\n\r\n2.2.6 Explanation for Range Operator: A series of values is defined by the range operator (..). It stands for the inclusive range of 1 to 5 in this instance.\r\n\r\nEach section\'s output shows the outcomes of these operations, giving a thorough rundown of the several ways that Kotlin operators are used for calculations and assessments.', '2024-04-18 04:21:46', '2024-04-18 04:21:46'),
(7, 'c6729a7be1fc', 2, '2.3', 'String Handling in Kotlin', 'String operators in Kotlin are tools that let you operate on strings, like comparison and concatenation.', 'videos/ins2LApsIORqmmMXKKDJQ7lYn4IHzrujVkxPk25h.mp4', 'fun main() {\r\n    val firstName = \"John\"\r\n    val lastName = \"Doe\"\r\n\r\n    // String concatenation using the + operator\r\n    val fullName = firstName + \" \" + lastName\r\n\r\n    // String interpolation\r\n    val greeting = \"Hello, $fullName!\"\r\n\r\n    println(greeting)\r\n}', 'Hello, John Doe!', 'The code creates a fullName by adding the firstName and lastName strings together using the + operator. An example of string interpolation is the $fullName in the welcome string, where the value of the variable is automatically put into the string. The output of the program, \"Hello, John Doe!\" displays the outcome of string interpolation and concatenation. Kotlin\'s text operations facilitate text manipulation and work.', '2024-04-18 04:22:58', '2024-04-18 04:22:58'),
(8, '0e2e4289f4e0', 2, '2.4', 'Kotlin Boolean', 'Booleans are a type of data in Kotlin that can have either true or false as its value. Booleans are frequently used in conditional statements to regulate a program\'s flow.', 'videos/KF74Q6jQ2G3e9vZpEwBWgHSepOECem7LgAQ7h0wB.mp4', 'fun main() {\r\n    val isSunny = true\r\n    val isRainy = false\r\n\r\n    if (isSunny) {\r\n        println(\"Wear sunglasses!\")\r\n    } else if (isRainy) {\r\n        println(\"Grab an umbrella!\")\r\n    } else {\r\n        println(\"Enjoy the day!\")\r\n    }\r\n}', 'Wear sunglasses!', 'In this example, weather conditions are simulated using two Boolean variables: isSunny and isRainy. The value of isSunny is verified by the if statement. The software says \"Wear sunglasses!\" since it is true and ignores the else if or else blocks. This demonstrates the use of Booleans in conditional statements to decide what to do depending on whether a condition is true or false.', '2024-04-18 04:24:11', '2024-04-18 04:24:11'),
(9, '2863bf9c9cbb', 3, '3.1', 'Conditional Statements in Kotlin', 'Conditional statements are Kotlin structures that let you manage how your program runs depending on predefined criteria. The main conditional statements are else, if, and else; they allow alternative code blocks to be executed based on the truth value of a given condition.', 'videos/CWyBs84u1ZOgPRYCCqM7GDOdSco56mC4krl5VB5Z.mp4', 'fun main() {\r\n    val temperature = 25\r\n\r\n    if (temperature > 30) {\r\n        println(\"It\'s a hot day!\")\r\n    } else if (temperature in 20..30) {\r\n        println(\"The weather is pleasant.\")\r\n    } else {\r\n        println(\"It\'s a bit chilly.\")\r\n    }\r\n}', 'The weather is pleasant.', 'The program assesses the temperature variable\'s value in this case. The if statement determines whether the temperature is higher than 30, and if it is, it prints \"It\'s a hot day!\" The otherwise if statement prints \"The weather is pleasant\" if the temperature is between 20 and 30 degrees (inclusive). The result reads, \"The weather is pleasant,\" since the temperature is 25, illustrating how conditional expressions direct the program\'s execution in response to predefined criteria.', '2024-04-18 04:25:40', '2024-04-18 04:25:40'),
(10, '1684ff1b9a43', 3, '3.2', '\'When\' Expression', 'Instead of using multiple if...else statements, you can use the “When” expression, which offers a more readable way to choose and execute one of several code blocks.', 'videos/onegraXAhbZWIsdEuQGMDZ7kHtOUngEQqgcKlBMe.mp4', 'fun main() {\r\n	val dayOfWeek = 5\r\n	val dayType = when (dayOfWeek) {\r\n    	1 -> \"Monday\"\r\n    	2 -> \"Tuesday\"\r\n    	3 -> \"Wednesday\"\r\n    	4 -> \"Thursday\"\r\n    	5 -> \"Friday\"\r\n    	else -> \"Weekend\"\r\n	}\r\n	println(\"Day $dayOfWeek is $dayType\")\r\n}', 'Day 5 is Friday', 'This is how the code works:\r\n·         The dayOfWeek variable is set to 5, representing a day code.\r\n·         The when expression is like a series of checks for different values of dayOfWeek.\r\n·         Each line after the arrow (->) represents a check:If dayOfWeek is\r\nIf it’s 1, the result is \"Monday.\"\r\nIf it\'s 2, the result is \"Tuesday.\"\r\nIf it\'s 3, the result is \"Wednesday.\"\r\nIf it\'s 4, the result is \"Thursday.\"\r\nIf it\'s 5, the result is \"Friday.\"\r\n·         If none of these matches, the else branch is executed, and the result is \"Weekend.\"\r\n·         Since dayOfWeek is 5 in this example, the check for 5 matches, and the result \"Friday\" is printed.\r\n·         In summary, the code checks the value of dayOfWeek and prints the corresponding day, taking into account the different possibilities.', '2024-04-18 04:27:07', '2024-04-18 04:27:07'),
(11, '9f7a63bde1e0', 3, '3.3', 'While Loop in Kotlin', 'Loops are like a helpful tool in coding that lets you repeat a set of instructions as long as a certain condition is true. Using loop statements saves time, reduces mistakes, and makes the code easier to understand. A \"while\" loop in coding repeats a set of instructions as long as a certain condition stays true.\r\nWhile Loop Syntax:\r\nThis is the syntax for While loop:\r\nwhile (condition) {\r\n  // code block to be executed\r\n}', 'videos/sw2QYXdmNq8rN7KdBX13X6uSdMnAxkRRm20cS8en.mp4', '// example of a \"while\" loop in Kotlin, where it counts down from 3 to 1:\r\nfun main() {\r\n	var countdown = 3\r\n \r\n	while (countdown > 0) {\r\n        println(\"Countdown: $countdown\")\r\n        countdown--\r\n	}\r\n \r\n    println(\"Liftoff!\")\r\n}', 'Countdown: 3\r\nCountdown: 2\r\nCountdown: 1\r\nLiftoff!', 'The variable countdown is initialized to 3. The \"while\" loop continues as long as the condition countdown > 0 is true. Inside the loop, it prints the current value of countdown and decrements countdown by 1. The loop runs three times (while countdown is 3, 2, and 1), and then it prints \"Liftoff!\" when the condition becomes false.', '2024-04-18 04:28:31', '2024-04-18 04:28:31'),
(12, '5f4d1545fbd8', 3, '3.4', 'Control Flow with \'Break\' and \'Continue\'', '3.4.1 The break statement helps stop a loop before it finishes the loop. When the break statement is found in a loop, the program leaves the loop right away, and then it moves on to the code outside the loop.\r\n3.4.2 The continue statement pauses the current iteration in a loop if a particular condition is met and proceeds to the next iteration of the loop.', 'videos/NWLMBPs3iHkwhChkoVNwgltKa6E87Pz4djygYTnY.mp4', '3.4.1\r\nfun main() {\r\n	for (i in 1..5) {\r\n    	if (i == 3) {\r\n        	println(\"Breaking the loop at i = $i\")\r\n        	break\r\n    	}\r\n    	println(\"Inside the loop: i = $i\")\r\n	}\r\n	println(\"Outside the loop\")\r\n}\r\n\r\n3.4.2 \r\nfun main() {\r\n	for (i in 1..5) {\r\n    	if (i == 3) {\r\n        	println(\"Skipping the loop at i = $i\")\r\n        	continue\r\n    	}\r\n    	println(\"Inside the loop: i = $i\")\r\n	}\r\n	println(\"Outside the loop\")\r\n}', '3.4.1 \r\nInside the loop: i = 1\r\nInside the loop: i = 2\r\nBreaking the loop at i = 3\r\nOutside the loop\r\n3.4.2\r\nInside the loop: i = 1\r\nInside the loop: i = 2\r\nSkipping the loop at i = 3\r\nInside the loop: i = 4\r\nInside the loop: i = 5\r\nOutside the loop', '3.4.1 \r\n·         We still have a loop running from 1 to 5.\r\n·         Inside the loop, we check if the current value of i is equal to 3.\r\n·         If i is equal to 3, we print a message saying we\'re skipping the loop at that point and use the continue statement to move to the next iteration of the loop without executing the remaining code inside the loop for that specific iteration.\r\n·         If i is not equal to 3, we print a message indicating that we are inside the loop and display the current value of i.\r\n·         Finally, we print a message outside the loop.\r\n·         When i is equal to 3, the loop skips the remaining code inside the loop for that iteration and moves to the next one.\r\n3.4.2\r\nWe still have a loop running from 1 to 5. Inside the loop, we check if the current value of i is equal to 3. If i is equal to 3, we print a message saying we\'re skipping the loop at that point and use the continue statement to move to the next iteration of the loop without executing the remaining code inside the loop for that specific iteration. If i is not equal to 3, we print a message indicating that we are inside the loop and display the current value of i. Finally, we print a message outside the loop. When i is equal to 3, the loop skips the remaining code inside the loop for that iteration and moves to the next one.', '2024-04-18 04:30:32', '2024-04-18 04:30:32'),
(13, '9fba416f4acd', 4, '4.1', 'Arrays in Kotlin', 'Arrays serve as a way to store numerous values within a single variable, eliminating the need to create individual variables for each value.\r\n\r\n4.1.1 Array Syntax:\r\nval foods = arrayOf(\"Apple\", \"Banana\", \"Orange\", \"Grapes\")\r\n4.1.2 Array Index number:\r\nTo get a specific item from an array, just mention its position using square brackets. For instance, in this case, we\'re getting the value of the first item in fruits. To form an array, utilize the arrayOf() function and list the values separated by commas within it.\r\n4.1.3 Array Size Property\r\nTo determine the number of elements in an array, utilize the size property.\r\n 4.1.4 Using For Loop\r\nWhen dealing with arrays, you may need to iterate through each of the elements. You can achieve this by using a for loop, a concept that will be explored further in the upcoming chapter The example prints all the elements in the \"fruits\" array.', 'videos/Mw35SnEMK6buZ7aCxmlhNYzNWE9gIyvjvS48nQ2U.mp4', '4.1.2\r\nval fruits = arrayOf(\"Apple\", \"Banana\", \"Orange\", \"Grapes\")\r\nprintln(fruits[0])\r\n\r\n//To change the value of a specific element, refer to the index number:\r\nval fruits = arrayOf(\"Apple\", \"Banana\", \"Orange\", \"Grapes\")\r\nprintln(fruits[2])\r\n \r\n4.1.3\r\nval fruits = arrayOf(\"Apple\", \"Banana\", \"Orange\", \"Grapes\")\r\nprintln(\"The size of the array is: ${fruits.size}\")\r\n\r\n4.1.4\r\nfun main() {\r\n	val fruits = arrayOf(\"Apple\", \"Banana\", \"Orange\", \"Grapes\")\r\n	for (x in fruits) {\r\n    	println(x)\r\n	}\r\n}', '4.1.2 Output #1:\r\nApple\r\n\r\n4.1.2 Output #2:\r\nOrange\r\n\r\n4.1.3:\r\nThe size of the array is: 4\r\n\r\n4.1.4:\r\nApple\r\nBanana\r\nOrange\r\nGrapes', '4.1.1\r\nWe are essentially constructing an array called foods that holds a list of various fruit types in the given line of Kotlin code, val foods = arrayOf(\"Apple\", \"Banana\", \"Orange\", \"Grapes\"). The strings \"Apple\", \"Banana\", \"Orange\", and \"Grapes\" are the elements that are filled in this array created by the arrayOf(...) function. Within the parenthesis, there is a comma between each element. Foods is declared as a read-only variable via the val keyword, which means that once it is initialized, its value cannot be modified. The list of fruits we gave may now be retrieved in this array by using the variable name foods.\r\n4.1.2\r\nThis Kotlin code example declares and initializes an array called {foods}. \"Apple\", \"Banana\", \"Orange\", and \"Grapes\" are its four components. The array is created using the `arrayOf} function, and commas are used within the parenthesis to separate each element. The items in this array indicate that strings can be stored in it.\r\n4.1.3 \r\nThe four entries \"Apple\", \"Banana\", \"Orange\", and \"Grapes\" are used to declare and initialize an array called fruits in this Kotlin code. The fruits array\'s size is printed via string interpolation in the line println(\"The size of the array is: ${fruits.size}\"). Using ${} notation, the array\'s size is retrieved and inserted into the string at the ${fruits.size} section. This result shows that there are four elements in the array of fruits.\r\n4.1.4:\r\nEvery element in the fruits array is printed on a new line by the code as iteratively goes over each element. As a result, one fruit from the array is shown each line in the output.', '2024-04-18 04:32:26', '2024-04-18 04:32:26'),
(14, 'ef9332a88a76', 4, '4.2', 'Kotlin For Loop', 'In Kotlin, unlike some other programming languages such as Java, there is no traditional \"for\" loop. Instead, Kotlin \"for\" loop is designed to iterate through arrays, ranges, or any other entities that have a countable number of values.', 'videos/nX0UU3irfudIy7rMzBZnaZ3KDMLNRRLk493dv6kT.mp4', '// In the example below, we loop through an array of integers:\r\nfun main() {\r\n	for (i in 5 downTo 1) {\r\n    	println(\"Current number: $i\")\r\n	}\r\n}', 'Current number: 5\r\nCurrent number: 4\r\nCurrent number: 3\r\nCurrent number: 2\r\nCurrent number: 1', 'In this case, the loop iterates over the range from 5 down to 1, printing the current number during each iteration.', '2024-04-18 04:33:44', '2024-04-18 04:33:44'),
(15, '9d8588e5d36b', 4, '4.3', 'Ranges', '4.3.1 In Kotlin, a range is a sequence of values defined by a start, end, and optional step. Ranges are commonly used in loops and conditions for working with sequential values.\r\n4.3.2 Check if a Value Exists\r\nYou can use the \"in\" operator to verify if a value exists within a range:', 'videos/3VinQh20VMsXtoTwJJsqhp04sTBoUEqQTAtPxzLW.mp4', '4.3.1 EXAMPLE CODE #1\r\nfun main() {\r\n	// Creating a range from 1 to 5 (inclusive)\r\n	val myRange = 1..5\r\n \r\n	// Looping through the range and printing each value\r\n	for (number in myRange) {\r\n    	println(number)\r\n	}\r\n}\r\n\r\n4.3.2 EXAMPLE CODE #2\r\nfun main() {\r\n	val daysOfWeek = 1..7 // Represents the days of the week\r\n	val dayToCheck = 3 // Let\'s check if day 3 (Wednesday) is in the range\r\n \r\n	if (dayToCheck in daysOfWeek) {\r\n    	println(\"Day $dayToCheck is in the range of days of the week.\")\r\n	} else {\r\n    	println(\"Day $dayToCheck is not in the range of days of the week.\")\r\n	}\r\n}', '4.3.1:\r\n1\r\n2\r\n3\r\n4\r\n5\r\n4.3.2:\r\nDay 3 is in the range of days of the week.', '4.3.1: \r\nIn this example, 1-5 creates a range that includes the values 1, 2, 3, 4, and 5. The for loop then iterates through each value in the range, and the println statement prints each value.\r\nNote: always include the first and last value when using the range syntax.\r\n4.3.2:\r\nIn this example, a range is created from 1 to 7 (inclusive) using `1-7`. The `in` operator is then used to check if the value `3` exists within this range. Since `3` is within the range of days of the week (1 to 7), the output indicates that \"Day 3 is in the range of days of the week.\"', '2024-04-18 04:35:14', '2024-04-18 04:35:14'),
(16, '891ca63d0cf1', 4, '4.4', 'Functions in Kotlin', 'A function is a set of code that executes only when it\'s specifically invoked. It can receive data, called parameters, and is designed to perform particular actions. Functions are alternatively referred to as methods.\r\n4.4.1 Function Parameters\r\nFunctions can receive information through parameters. These parameters are listed inside the parentheses after the function name. You can have multiple parameters, separated by commas, and each parameter must have a specified type (Int, String, etc)\r\n4.4.2 Multiple Parameters in function\r\nIt\'s very simple to define a function with numerous parameters in Kotlin. All you have to do is list every parameter in parenthesis after the function name, along with its type.\r\n4.4.3 Return Values in Function\r\nKotlin functions can return values by passing in the value to be returned and the return keyword. The function\'s return type is indicated by following the parameter list with a colon (:) and then the type. \r\n4.4.4 Shorter Syntax for Return Values\r\nFor functions in Kotlin that consist of a single expression as their body, you can utilize a shorter syntax. When the function\'s goal is to compute and return a value depending on that expression, this is especially helpful. You can specify the expression straight after the equals sign (=), saving yourself the trouble of writing the return statement explicitly and putting it in curly braces.', 'videos/tc2B1jOg5zX1cLqguxCeDUeeBYRtPeTh4yBO4yUA.mp4', 'Syntax:\r\nfun main() {\r\n  println(\"Hello World\")\r\n}\r\n \r\n// Creating your own Functions\r\nfun main() {\r\n	// Calling the custom function\r\n	myFunction()\r\n}\r\n \r\n// Defining the custom function\r\nfun myFunction() {\r\n	println(\"Hello Kotlin!\")\r\n}\r\n\r\n4.4.1 Function ParametersExample:\r\nfun greet(name: String) {\r\n	println(\"Hello, $name!\")\r\n}\r\nfun main() {\r\n	greet(\"John\")\r\n	greet(\"Alice\")\r\n}\r\n\r\n4.4.2 Multiple Parameters Example:\r\nfun displayDetails(fname: String, age: Int) {\r\n	println(\"$fname is $age years old.\")\r\n}\r\nfun main() {\r\n	displayDetails(\"John\", 35)\r\n	displayDetails(\"Jane\", 32)\r\n	displayDetails(\"George\", 15)\r\n}\r\n\r\n4.4.3 Return Values in Function:\r\nExample:\r\nfun addFive(x: Int): Int {\r\n	return x + 5\r\n}\r\n \r\nfun main() {\r\n	val result = addFive(3)\r\n	println(result)\r\n}\r\n\r\n4.4.4 Shorter Syntax for Return Values:\r\nExample:\r\n \r\nfun addNumbers(x: Int, y: Int) = x + y\r\n \r\nfun main() {\r\n	val result = addNumbers(3, 5)\r\n	println(result)\r\n}', '4.4.1 Output:\r\nHello, John!\r\nHello, Alice!\r\n4.4.2 Output:\r\nJohn is 35 years old.\r\nJane is 32 years old.\r\nGeorge is 15 years old.\r\n4.4.3 Output:\r\n8\r\n4.4.4 Output:\r\n8', 'Syntax Explanation:\r\nIn this code, fun main(), This is the main function, the entry point of the program. Inside it, we call myFunction(). In fun myFunction(), this is the custom function we defined. It prints the specified text to the console. When you run this Kotlin program, it will execute the main function, which, in turn, calls and executes the myFunction. The output of this code is “Hello Kotlin!”\r\n\r\n4.4.1 Explanation:\r\nIn this example, the ‘greet’ function takes a name parameter of type String. When the function is called in the ‘main’ function, different names are passed as arguments, resulting in personalized greetings.\r\n\r\n4.4.2 Explanation:\r\nIn this code, there are two functions: \'displayDetails\' and \'main\'. The \'displayDetails\' function takes two parameters, \'fname\' (a string) and \'age\' (an integer), and prints a message combining the name and age. The \'main\' function calls \'displayDetails\' three times with different arguments, resulting in the display of personalized details for individuals named John, Jane, and George.\r\n\r\n4.4.3 Explanation:\r\nThis code defines a function called \'addFive\' that takes an integer parameter \'x\', adds 5 to it, and returns the result. In the \'main\' function, it calls \'addFive\' with the argument 3 and prints the result, which is 8, to the console.\r\n\r\n4.4.4 Explanation:\r\nIn this Kotlin code snippet, there\'s a function called \'addNumbers\' that takes two integer parameters (\'x\' and \'y\') and returns their sum using a concise syntax. The \'main\' function then calls \'addNumbers\' with arguments 3 and 5, storing the result in a variable named \'result\'. Finally, it prints the value of result to the console, which in this case would be 8.', '2024-04-18 04:36:39', '2024-04-18 04:36:39'),
(17, '3b9032ef8e37', 5, '5.1', 'OOP - Object-Oriented Programming', 'OOP, or object-oriented programming, is a way of writing code that is based on the idea of \"objects,\" which are groups of data and actions. Classes, objects, inheritance, flexibility, and encapsulation are some of the OOP ideas that Kotlin supports.', 'videos/Ar2DQkY5WD4wDjEOHxRU03IbreWrnSEMrbjvo4jc.mp4', '// Define a simple class\r\nclass Dog(val name: String, var age: Int) {\r\n    fun bark() {\r\n        println(\"Woof, woof!\")\r\n    }\r\n}\r\n\r\n funmain() {\r\n    // Create an instance of the Dog class\r\n    val myDog = Dog(\"Buddy\", 3)\r\n\r\n    // Access properties and call methods\r\n    println(\"Name: ${myDog.name}, Age: ${myDog.age}\")\r\n    myDog.bark()\r\n}', 'Name: Buddy, Age: 3\r\nWoof, woof!', 'An instance of the Dog class, named \"Buddy\" and aged 3, has its properties (name and age) accessed and printed, followed by calling the bark method, which prints \"Woof, woof!\" to the console.', '2024-04-18 04:38:31', '2024-04-18 04:38:31'),
(18, '71c166b2b1e3', 5, '5.2', 'Classes/Objects', 'A Class is like an object constructor, or a \"blueprint\" for creating objects.Everything in Kotlin is associated with classes and objects, along with its properties and functions. For example: in real life, a car is an object. The car has properties, such as brand, weight and color, and functions, such as drive and brake.\r\n\r\nTo create a class, use the class keyword, and specify the name of the class.', 'videos/97Tl6NB1kHRiSrCbDFZ6L6WziW9cZ3hyYEVwxwBC.mp4', '5.2.1 \r\n// Create a Car class along with some properties (brand, model and year)\r\n\r\nclass Car {\r\n  var brand = \"\"\r\n  var model = \"\"\r\n  var year = 0\r\n}\r\n\r\n//Now we can use the class named Car to create objects.\r\n\r\n\r\n// Create a c1 object of the Car class\r\nval c1 = Car()\r\n\r\n// Access the properties and add some values to it\r\nc1.brand = \"Ford\"\r\nc1.model = \"Mustang\"\r\nc1.year = 1969\r\n\r\nprintln(c1.brand)   // Outputs Ford\r\nprintln(c1.model)   // Outputs Mustang\r\nprintln(c1.year)    // Outputs 1969\r\n\r\n5.2.2\r\n// printing multiple objects\r\n\r\nval c1 = Car()\r\nc1.brand = \"Ford\"\r\nc1.model = \"Mustang\"\r\nc1.year = 1969\r\n\r\nval c2 = Car()\r\nc2.brand = \"BMW\"\r\nc2.model = \"X5\"\r\nc2.year = 1999\r\n\r\nprintln(c1.brand)  // Ford\r\nprintln(c2.brand)  // BMW', '5.2.1 \r\nFord\r\nMustang\r\n1969\r\n\r\n5.2.2 \r\nFord\r\nBMW', '5.2.1 \r\nIn the example below, we create an object of Car called c1, and then we access the properties of c1 by using the dot syntax (.), just like we did to access array and string properties:\r\n\r\n5.2.2 Explanation :\r\nThis code demonstrates the creation of two instances of the Car class, setting their properties, and then printing the brand property of each object. It illustrates the basic principles of object-oriented programming and accessing object properties in Kotlin.', '2024-04-18 04:39:56', '2024-04-18 04:39:56'),
(19, '03ba0ae24570', 5, '5.3', 'Constructors', 'In Kotlin, there\'s a faster way of doing this, by using a constructor.\r\n\r\nA constructor is like a special function, and it is defined by using two parentheses () after the class name. You can specify the properties inside of the parentheses (like passing parameters into a regular function).', 'videos/Tj9KQCCqA56qVG6FaYpbCF5o1rhfOIkfl0IhfUJC.mp4', '//The constructor will initialize the properties when you create an object of a class. Just remember to specify the type of the property/variable:\r\n\r\n\r\nclass Car(var brand: String, var model: String, var year: Int)\r\n\r\nfun main() {\r\n  val c1 = Car(\"Ford\", \"Mustang\", 1969)\r\n}', '.', 'This Kotlin code defines a Car class with mutable properties: brand, model, and year. The class includes a primary constructor for these properties. In the main function, an instance of Car named c1 is created, representing a 1969 Ford Mustang. The code showcases the use of object and property initialization in Kotlin.\r\n\r\n\r\n5.3.1 Now it\'s even easier to specify multiple objects of one class:\r\n\r\nclass Car(var brand: String, var model: String, var year: Int)\r\n\r\nfun main() {\r\n  val c1 = Car(\"Ford\", \"Mustang\", 1969)\r\n  val c2 = Car(\"BMW\", \"X5\", 1999)\r\n  val c3 = Car(\"Tesla\", \"Model S\", 2020)\r\n}\r\n\r\n5.3.1 Explanation:\r\nThis Kotlin code defines a Car class with mutable properties for brand, model, and year. In the main function, three instances of Car (c1, c2, c3) are created, representing a 1969 Ford Mustang, a 1999 BMW X5, and a 2020 Tesla Model S.Each instance is initialized with specific values, demonstrating the simplicity of object creation and property assignment in Kotlin.', '2024-04-18 04:41:15', '2024-04-18 04:41:15'),
(20, 'c9a57ed1aeba', 5, '5.4', 'Class Function', 'In Kotlin, functions are like mini-tasks. You define them to do specific jobs. For example, a \"drive\" function could make a car move. You write the steps inside the function. Then, when you call the function, it performs those steps. Functions help keep our code neat and organized.\r\n\r\n5.4.1 Class Function Parameters\r\nJust like with regular functions, you can pass parameters to a class function:', 'videos/fol2gc4moXlSDEiUQxbWIKXh1W9cc5bpd6UYWuME.mp4', '5.4 Class Function Example:\r\n\r\nCreate a drive() function inside the Car class and call it:\r\n\r\n}class Car(var brand: String, var model: String, var year: Int) {\r\n  // Class function\r\n  fun drive() {\r\n    println(\"Wrooom!\")\r\n  }\r\n}\r\n\r\nfun main() {\r\n  val c1 = Car(\"Ford\", \"Mustang\", 1969)\r\n  \r\n  // Call the function\r\n  c1.drive()\r\n\r\n5.4.1 Class Function Parameters example:\r\nCreate two functions: drive() and speed(), and pass parameters to the speed() function:\r\n\r\nclass Car(var brand: String, var model: String, var year: Int) {\r\n  // Class function\r\n  fun drive() {\r\n    println(\"Wrooom!\")\r\n  }\r\n  \r\n  // Class function with parameters\r\n  fun speed(maxSpeed: Int) {\r\n    println(\"Max speed is: \" + maxSpeed)\r\n  }\r\n}\r\n\r\nfun main() {\r\n  val c1 = Car(\"Ford\", \"Mustang\", 1969)\r\n  \r\n  // Call the functions\r\n  c1.drive()\r\n  c1.speed(200)\r\n}', '5.4 Output:\r\nWrooom!\r\n5.4.1 Output:\r\nWrooom!\r\nMax speed is: 200', '5.4 Explanation:\r\nIn this code, you have a Car class with a drive function. When you create an instance of the Car class (c1) and then call its drive function in the main function, it will print \"Wrooom!”.\r\n\r\n5.4.1 Explanation:\r\nIn this code, you have a Car class with two functions: drive and speed. When you create an instance of the Car class (c1) and call its drive function, it prints \"Wrooom!\" Then, when you call its speed function with the argument 200, it prints \"Max speed is: 200\"', '2024-04-18 04:42:53', '2024-04-18 04:42:53'),
(21, '5f59cecb04ec', 5, '5.5', 'Inheritance', 'Kotlin Inheritance (Subclass and Superclass)\r\n\r\nIn Kotlin, it is possible to inherit class properties and functions from one class to another. We group the \"inheritance concept\" into two categories:\r\nsubclass (child) - the class that inherits from another class\r\nsuperclass (parent) - the class being inherited from.', 'videos/HWnGi00PWTba1Pyb7rFFafZhdXNDI6FUcyORXecj.mp4', '// In the example below, MyChildClass (subclass) inherits the properties from the MyParentClass class (superclass):\r\n\r\n\r\n// Superclass\r\nopen class MyParentClass {\r\n  val x = 5\r\n}\r\n\r\n// Subclass\r\nclass MyChildClass: MyParentClass() {\r\n  fun myFunction() {\r\n    println(x) // x is now inherited from the superclass\r\n  }\r\n}\r\n\r\n// Create an object of MyChildClass and call myFunction\r\nfun main() {\r\n  val myObj = MyChildClass()\r\n  myObj.myFunction()\r\n}', '5', 'In this code, there is a superclass MyParentClass with a property x set to 5. The MyChildClass is a subclass that inherits from MyParentClass. In the myFunction of the subclass, it prints the value of the inherited property x, which is 5. When you create an object of MyChildClass and call its myFunction in the main function, it prints \"5\"', '2024-04-18 04:43:59', '2024-04-18 04:43:59');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_28_135204_create_permission_tables', 1),
(6, '2023_12_02_135536_create_programming_languages_table', 1),
(7, '2023_12_02_140140_create_chapters_table', 1),
(8, '2023_12_02_142213_create_lessons_table', 1),
(9, '2024_03_30_000119_create_exams_table', 1),
(10, '2024_04_13_110751_create_chapter_assessments_table', 1),
(11, '2024_04_14_035436_create_badges_table', 1),
(12, '2024_04_14_040859_create_user_badges_table', 1),
(13, '2024_04_14_185140_create_getting_starteds_table', 1),
(14, '2024_04_14_191809_create_getting_started_steps_table', 1),
(15, '2024_04_17_162727_create_user_progress_table', 1),
(16, '2024_04_18_014514_create_exam_scores_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 2),
(1, 'App\\Models\\User', 3),
(1, 'App\\Models\\User', 4),
(1, 'App\\Models\\User', 5),
(1, 'App\\Models\\User', 6),
(1, 'App\\Models\\User', 7),
(1, 'App\\Models\\User', 8),
(1, 'App\\Models\\User', 9),
(1, 'App\\Models\\User', 10),
(1, 'App\\Models\\User', 11),
(1, 'App\\Models\\User', 12),
(1, 'App\\Models\\User', 13),
(1, 'App\\Models\\User', 14),
(1, 'App\\Models\\User', 15),
(1, 'App\\Models\\User', 16);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'b9d796e728f181adb0b6', '82e5de23cb212ab72b7cc89797975cbb1181ac1acde23a3bd85dd681d3683a67', '[\"*\"]', '2024-04-22 09:12:51', NULL, '2024-04-18 03:46:43', '2024-04-22 09:12:51'),
(2, 'App\\Models\\User', 1, '7052a648f9c3cc9600ba', '481641fad382e477ccabc391d99e84c1cf45d5909b449ec9b4919e969b84cc8f', '[\"*\"]', '2024-04-18 08:09:42', NULL, '2024-04-18 04:06:14', '2024-04-18 08:09:42'),
(3, 'App\\Models\\User', 2, 'c293980e039999e24356', '4f9572bdba10ccd073c77971c3918488cbfe942f78d3f224ac49a27c7f43c337', '[\"*\"]', '2024-04-18 06:56:03', NULL, '2024-04-18 06:55:17', '2024-04-18 06:56:03'),
(4, 'App\\Models\\User', 2, '1f7b2462227ba4c1448a', 'a00649e9e576e5e9a861d29a9b9807bb92f50fef6a094b3a89efd8e5138830ae', '[\"*\"]', '2024-04-18 07:18:06', NULL, '2024-04-18 07:18:03', '2024-04-18 07:18:06'),
(5, 'App\\Models\\User', 3, '4730742a0f3170b741b3', '0efed7c7cd80b8d3d7c149d062a9e3e40cfc1397312ea7881321a654455c2cbd', '[\"*\"]', '2024-04-18 07:21:27', NULL, '2024-04-18 07:19:55', '2024-04-18 07:21:27'),
(6, 'App\\Models\\User', 3, '48e6690b06aa97360d5f', '1977575793adf3bb6f305ee2ffc5ba9f96dc5d148eedffbdc16a1e576f87c030', '[\"*\"]', '2024-04-18 07:42:33', NULL, '2024-04-18 07:42:20', '2024-04-18 07:42:33'),
(7, 'App\\Models\\User', 3, '285deb2cdc5e11cb189a', 'e26dc0d9f3ea556db205eab7bc66bbad76713ab2b092dbfd002ef99ebe617983', '[\"*\"]', '2024-04-18 07:45:15', NULL, '2024-04-18 07:44:53', '2024-04-18 07:45:15'),
(8, 'App\\Models\\User', 3, 'ce25215abb9d220efccd', '0470fb818b3c2fe7464b225c5385b9376409b312cbabffa92f82acc85fecafcd', '[\"*\"]', '2024-04-18 07:49:49', NULL, '2024-04-18 07:49:43', '2024-04-18 07:49:49'),
(9, 'App\\Models\\User', 3, '6b4b86f04fb18f68cfda', '1187738590d6ff7ecd2ee18546cbf16fd7249165da605e73a5d0c312fa486de3', '[\"*\"]', '2024-04-18 07:52:58', NULL, '2024-04-18 07:50:05', '2024-04-18 07:52:58'),
(10, 'App\\Models\\User', 3, '8edc8db9737176aca724', 'c4c4f2ac21a8b98c542b59f3f254dc1b1ab0a90f054d58113c2e847100e8241d', '[\"*\"]', '2024-04-18 07:54:19', NULL, '2024-04-18 07:53:15', '2024-04-18 07:54:19'),
(11, 'App\\Models\\User', 3, '1ffbacddae59dc7dafcf', '50cbb94b2b190e6e23ee011c2fb9bcc3d14a72db9af127fbf3a1f0ca24d5aa50', '[\"*\"]', '2024-04-18 07:57:49', NULL, '2024-04-18 07:57:34', '2024-04-18 07:57:49'),
(12, 'App\\Models\\User', 3, '16539fe35a5e8ea95af9', '140a8b333d64d8889a8ce143844402e83a18920fa0344e4ea1a66c4708cf381d', '[\"*\"]', '2024-04-18 07:58:55', NULL, '2024-04-18 07:58:02', '2024-04-18 07:58:55'),
(13, 'App\\Models\\User', 3, '9434cba41a69eccb3d18', '1bfad9a55c59918d5103e2f0e2fcbaf4737e9fbb8ec62234adad609a2f19e1ee', '[\"*\"]', '2024-04-18 07:59:39', NULL, '2024-04-18 07:59:32', '2024-04-18 07:59:39'),
(14, 'App\\Models\\User', 1, '9f899e43f9d08b61005a', 'fa81e328670295277683ff894a000d21ecb8dac573882905732b540f7497e310', '[\"*\"]', '2024-04-18 08:10:57', NULL, '2024-04-18 08:10:05', '2024-04-18 08:10:57'),
(15, 'App\\Models\\User', 1, 'f817f90765c5aec3a080', '18ba3c34206396b5cb578c6f363a2aa0b6cacf81fc962032e5c59e77ff78e6f7', '[\"*\"]', '2024-04-18 08:37:27', NULL, '2024-04-18 08:11:29', '2024-04-18 08:37:27'),
(16, 'App\\Models\\User', 3, '501e13c83bae46c30457', '00e721c79436953fe35e368aa5a3b1801e7ddc729d14c83a01ee9b8f2f3c3b66', '[\"*\"]', '2024-04-18 08:17:57', NULL, '2024-04-18 08:12:22', '2024-04-18 08:17:57'),
(17, 'App\\Models\\User', 4, '97c89b5351bf5002aa3f', '133a59b6345d4653735da3c973d32967f94c494b5c272ef726536fe5cf65116f', '[\"*\"]', '2024-04-18 08:26:37', NULL, '2024-04-18 08:21:26', '2024-04-18 08:26:37'),
(18, 'App\\Models\\User', 3, '6bf1391b099309fc80d1', '4d17bdd416dfce3e8552a380c57c9260cd04b37ed03b7a2e6a968a754467600e', '[\"*\"]', '2024-04-18 08:38:39', NULL, '2024-04-18 08:27:08', '2024-04-18 08:38:39'),
(19, 'App\\Models\\User', 1, '54b9f5dc9a945504b5c4', '54fb9997c4479f8598d6fea70a610a441c0a759c1952fff31fa40467241c70cf', '[\"*\"]', '2024-04-22 04:52:22', NULL, '2024-04-22 04:51:48', '2024-04-22 04:52:22'),
(20, 'App\\Models\\User', 6, '6fecd5d1f705540556e2', 'a9d1546d69c6cdb6a6ea7aa3f8aa8875f9a275b7d399e5c6ca36275e6961611e', '[\"*\"]', '2024-04-22 05:20:34', NULL, '2024-04-22 05:01:25', '2024-04-22 05:20:34'),
(21, 'App\\Models\\User', 7, '94f56ad823711b068c27', '3d8cd9227c57e221d53d3941d3d1994f3640a714ab27d8357e6b0fb96b30324a', '[\"*\"]', '2024-04-22 05:34:35', NULL, '2024-04-22 05:21:41', '2024-04-22 05:34:35'),
(22, 'App\\Models\\User', 7, '67ba63d91678552aaea4', 'c11186e44ffe37ef808ee856972f44d8694932d133cf1ccab7ed7e750f40db32', '[\"*\"]', '2024-04-22 05:43:25', NULL, '2024-04-22 05:42:56', '2024-04-22 05:43:25'),
(23, 'App\\Models\\User', 7, '57cbcbb9522fb82b007f', 'bc082022ddb9e1e30912f346fb338bbbd39181bb72d67a388050c7a2104ae4b1', '[\"*\"]', '2024-04-22 05:46:06', NULL, '2024-04-22 05:44:03', '2024-04-22 05:46:06'),
(24, 'App\\Models\\User', 7, '02114f47ca2b3fab61fd', '9d13b5e9bd88ea6173f611bba0fe1dfd9e55aca92052b0a4f40ad5981864367c', '[\"*\"]', '2024-04-22 06:09:58', NULL, '2024-04-22 06:06:40', '2024-04-22 06:09:58'),
(25, 'App\\Models\\User', 7, '606c7c7a89de1ecf6370', '4dcbc2d7bc5bf9dbff06e925ce55cee3b260735c9b405ce070638d49f0c5f11e', '[\"*\"]', '2024-04-22 06:33:36', NULL, '2024-04-22 06:29:56', '2024-04-22 06:33:36'),
(26, 'App\\Models\\User', 7, '5d3aca1c5b140840b541', 'ff421bc24bfdfb6e1b1c9648a50f291dd7c5c008c2f916d839753e1c14fdfb2b', '[\"*\"]', '2024-04-22 06:40:27', NULL, '2024-04-22 06:33:48', '2024-04-22 06:40:27'),
(27, 'App\\Models\\User', 7, '0365c53f4d575cb54cdf', '5b1eb563bf59ea4ea5ac051ed627391ec965482cda40e0cb78d5082e68b016f5', '[\"*\"]', '2024-04-22 07:24:48', NULL, '2024-04-22 07:20:02', '2024-04-22 07:24:48'),
(28, 'App\\Models\\User', 7, '402e74def7208df248e7', 'b0eb3fd06b2b4b9c84cd5623a74941fb79b2d6a2cab143e5d86607e310ddae7e', '[\"*\"]', '2024-04-22 08:35:21', NULL, '2024-04-22 08:34:31', '2024-04-22 08:35:21'),
(29, 'App\\Models\\User', 7, 'a3706ee6ccc12223ac46', 'fb12f1e24f2fbeb93b8d97491c0d78b81eda09a8ca7b01a82d446165afa8a686', '[\"*\"]', '2024-04-22 08:36:51', NULL, '2024-04-22 08:36:10', '2024-04-22 08:36:51'),
(30, 'App\\Models\\User', 9, 'ab68f478fb5391e09348', '8cdc65100b490e817d628160b8f85bc83c7adb94fbbf850615eb995f841a16bd', '[\"*\"]', '2024-04-22 08:46:36', NULL, '2024-04-22 08:40:18', '2024-04-22 08:46:36'),
(31, 'App\\Models\\User', 9, 'ac7b661296e29e8e0455', 'e0e39b1879a4ba61272826f2e3c86b6ab93bd16e7f162cf5259e169ee43b8df1', '[\"*\"]', '2024-04-22 08:47:43', NULL, '2024-04-22 08:46:53', '2024-04-22 08:47:43'),
(32, 'App\\Models\\User', 9, 'a56b93532a3a7ec4fc51', '6a1c6788c20ce7048645e212cb5bdb4fda0626a138b54bf8d87982eef2ef8c8e', '[\"*\"]', NULL, NULL, '2024-04-22 08:46:54', '2024-04-22 08:46:54'),
(33, 'App\\Models\\User', 9, '79f9f14c9e9c5293086f', '318462c8ac844fa689f45f0b07242b349c505e165b66b79e352ff76e0219c15a', '[\"*\"]', '2024-04-22 09:00:01', NULL, '2024-04-22 08:48:44', '2024-04-22 09:00:01'),
(34, 'App\\Models\\User', 9, 'f48555cfcd7ac5ffeef4', '54d53042463803e679cffa53d30942f209029d2c5543a39f5842d1ad1d99b28a', '[\"*\"]', '2024-04-22 09:05:53', NULL, '2024-04-22 09:00:19', '2024-04-22 09:05:53'),
(35, 'App\\Models\\User', 9, '9c95428d4e7af42f0773', 'e14948fb02aa5815869ff2f667325080b635df7ee6c5a498383bdc4ddb1f6fec', '[\"*\"]', '2024-04-22 09:07:39', NULL, '2024-04-22 09:06:14', '2024-04-22 09:07:39'),
(36, 'App\\Models\\User', 9, '42767bd02482ec52957f', '52898e358f91e72b041946fde852610b8594ee513d2ca0e5827eafe5427af85e', '[\"*\"]', '2024-04-22 09:15:50', NULL, '2024-04-22 09:07:53', '2024-04-22 09:15:50'),
(37, 'App\\Models\\User', 11, '88f25aa48ecf4d04eb3c', '17c77d81c583132780d5860379c790085fdd840909122829f28934e301bc4aba', '[\"*\"]', '2024-04-22 09:17:26', NULL, '2024-04-22 09:17:16', '2024-04-22 09:17:26'),
(38, 'App\\Models\\User', 11, '1b0851b4cca4be58d2a5', '32d5e29779e566e547badabbd938e554b8cb5d538fed1725969a589ad2ba0d8e', '[\"*\"]', '2024-04-22 09:26:45', NULL, '2024-04-22 09:17:56', '2024-04-22 09:26:45'),
(39, 'App\\Models\\User', 1, '2a8d0ceb2ec517d0b97d', 'ec23b7c76aafc34d6ba90d4c39e3b0be42ee4964df03d0735719ca5051725265', '[\"*\"]', '2024-05-15 03:56:47', NULL, '2024-05-14 12:19:41', '2024-05-15 03:56:47'),
(40, 'App\\Models\\User', 1, '58387b62ccc6240b72a0', '990927cb289cb5ef98687474f84eb3c75d63a4ef8d9e4eb245b8084aa63aefde', '[\"*\"]', '2024-05-15 02:36:32', NULL, '2024-05-14 12:31:23', '2024-05-15 02:36:32'),
(41, 'App\\Models\\User', 12, '4a6a762b7d41da4a9168', '23ffc82a6abefb769f2873e8e9d60dd7fd8491d31fdbca10feabd72870a4a4bd', '[\"*\"]', '2024-05-14 13:50:28', NULL, '2024-05-14 13:44:36', '2024-05-14 13:50:28'),
(42, 'App\\Models\\User', 1, '6060b04eaf6333be6cb8', '407ec781b9d31c776a1b6fc114b2d0006419f46ab9b3bed09591a222b901f5dc', '[\"*\"]', '2024-05-15 02:36:19', NULL, '2024-05-15 02:35:56', '2024-05-15 02:36:19'),
(43, 'App\\Models\\User', 12, '314b48d4914a051fa92e', '5330fbb283a63636f0386b9e9430d2dc4055edfa2093a3b97d03e8edb051d5ad', '[\"*\"]', '2024-05-15 02:48:04', NULL, '2024-05-15 02:42:02', '2024-05-15 02:48:04'),
(44, 'App\\Models\\User', 12, 'ac7076854adb1746ed46', '127d09740246039fb0214bd3eadbf38bba3f100e38b26830e25136b29aaa35c3', '[\"*\"]', '2024-05-15 02:48:34', NULL, '2024-05-15 02:48:20', '2024-05-15 02:48:34'),
(45, 'App\\Models\\User', 12, 'bd0ea6615aa16293d57a', '7d80f5a7669b30606a3c40fe840193fe296f917caedb350992e54a7dfd30f9fc', '[\"*\"]', NULL, NULL, '2024-05-15 02:48:21', '2024-05-15 02:48:21'),
(46, 'App\\Models\\User', 12, '8cd4b647896876314559', '52ae4d9704d3713fc4b479545bce99521540625c591020b19fe305e7997b28c4', '[\"*\"]', '2024-05-15 03:07:24', NULL, '2024-05-15 03:05:45', '2024-05-15 03:07:24'),
(47, 'App\\Models\\User', 1, '1585705ad1704e1a95b7', 'c52eb5be297ed22174de83b5a228c0a0303d74ae31f6be2ad97eba6dcd99fecc', '[\"*\"]', '2024-05-15 04:18:31', NULL, '2024-05-15 04:18:16', '2024-05-15 04:18:31'),
(48, 'App\\Models\\User', 12, '993f870179da4323e0a4', 'd613388171e7bd818e3de6380969b7660d6ce7bfb6ac710b5b5db1849b9e2b57', '[\"*\"]', '2024-05-15 04:34:55', NULL, '2024-05-15 04:29:44', '2024-05-15 04:34:55'),
(49, 'App\\Models\\User', 12, '91e3bfbb84947a90fa03', 'd12697a3e2037a7640e10468dbf584e0b56375cffc193965cd0d237f4ec869ba', '[\"*\"]', '2024-05-15 04:37:28', NULL, '2024-05-15 04:35:15', '2024-05-15 04:37:28'),
(50, 'App\\Models\\User', 13, 'cba9a51be8c9723a4338', '01468019f91b846d583d8775791a7211c08089ade56803c67b8e104cddcab0c7', '[\"*\"]', '2024-05-15 04:40:28', NULL, '2024-05-15 04:39:34', '2024-05-15 04:40:28'),
(51, 'App\\Models\\User', 13, 'be56815fd95760e543a5', '27c218655cd99f9b6c5d5130179c2ca735b0da103b8f95eb56132d654ca3046e', '[\"*\"]', '2024-05-15 04:41:04', NULL, '2024-05-15 04:40:43', '2024-05-15 04:41:04'),
(52, 'App\\Models\\User', 1, '7f952ff9156a812b09ca', 'a994dc1eaf33c139f587307341b35faf94349b97e0e4a0af402412010742188c', '[\"*\"]', '2024-05-15 17:20:13', NULL, '2024-05-15 13:13:45', '2024-05-15 17:20:13'),
(53, 'App\\Models\\User', 14, 'a6cf64f1c9c9ad922df7', 'aa27c8ce0f93299b41df4666a04524a5638b0f657f67441405d5d6915548ecc8', '[\"*\"]', '2024-05-15 17:57:58', NULL, '2024-05-15 17:57:34', '2024-05-15 17:57:58'),
(54, 'App\\Models\\User', 16, '4c765a8d16225aa581ce', '8fef1cff45b0435da835e8fb9a63ebf353b2bf67636a8e8110b311f1fb0ab7c5', '[\"*\"]', '2024-05-15 18:14:09', NULL, '2024-05-15 18:13:16', '2024-05-15 18:14:09');

-- --------------------------------------------------------

--
-- Table structure for table `programming_languages`
--

CREATE TABLE `programming_languages` (
  `id` bigint UNSIGNED NOT NULL,
  `reference_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `programming_languages`
--

INSERT INTO `programming_languages` (`id`, `reference_number`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, '170b4eb16c70', 'Kotlin', 'Kotlin is a programming language with fixed types that works with JetBrains\' Java Virtual Machine (JVM). It is meant to be simpler, more null-safe, and work with Java. In Kotlin, you can find extension functions, smart casts, and functional programming tools. For effective asynchronous programming in Android development, it is known for offering coroutines. After thinking about it, Kotlin is a popular choice for many uses because it has a modern, expressive structure and features that make code safer and developers more productive.', '2024-04-18 03:54:52', '2024-04-18 03:54:52');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'USER', 'web', '2024-04-18 03:42:50', '2024-04-18 03:42:50'),
(2, 'ADMIN', 'web', '2024-04-18 03:42:50', '2024-04-18 03:42:50');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `otp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `email_verified_at`, `password`, `otp`, `profile_picture`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '2024-04-18 03:42:50', '$2y$12$cN7msQYlpDftIu4LPYPp4ex/lhzSxrkZh8OHKNdpfMYE/pYy0yDSu', NULL, NULL, '52|YOeeB7eTfKeCgOOlECvp7Ry7wJfomuJpUr0IXL6K1888773f', '2024-04-18 03:42:50', '2024-05-15 13:13:45'),
(9, 'liv basco', 'ccis.liv.basco@gmail.com', '2024-04-22 08:40:17', '$2y$12$SCCCuuEsGWUXltWZkuBYXeL0qlWgEGnhg4/WAfL1d2NfZyFnUHAQi', NULL, 'http://192.168.1.139/storage/images/JczFJy7cC0tEAIb1r9eAlAsYmmGWof2Gjh8fDvum.jpg', '36|dSJ5KS0MJQUtmE99RjI759sjdVCVYtBOmDOYAp1Qbd095b21', '2024-04-22 08:39:54', '2024-04-22 09:07:53'),
(10, 'user', 'johnbinzeescol@gmail.com', NULL, '$2y$12$.k/6sgFKQ0RjOVEi1214S.Uoz2MBZtS43O8rPSsDftjWfM73upngm', '146059', NULL, NULL, '2024-04-22 09:03:32', '2024-04-22 09:03:32'),
(11, 'roy', 'ccis.roy.rosima@gmail.com', '2024-04-22 09:17:15', '$2y$12$ID3xQytv6YwO4Uophzte.OP0Rcj3N3PFbMevi1Zo6Vl8qOZJxy5Zq', NULL, 'http://192.168.1.139/storage/images/G09ISy16MX9Oxcg0gcwKEbeNXizwDscnmUn2t0a7.jpg', '38|D5Jz8AhnPzbwy7UScUKiVfyYOiXjdjdtvGM7YGr018ea536f', '2024-04-22 09:16:49', '2024-04-22 09:20:55'),
(12, 'chelseabaylosis1@gmail.com', 'chelseabaylosis1@gmail.com', '2024-05-14 13:44:36', '$2y$12$7.z5dc6IOSKj.O7LwumNNuR0kCIInuuhjcr.7J2ZwxOcv3Es6LWH2', NULL, NULL, '49|SclkoQof0rLYCqAfb5IkAwbznlmXvxpa9T70dY1G02dfcb4e', '2024-05-14 13:43:41', '2024-05-15 04:35:16'),
(13, 'maxxx', 'ccis.maxene.baylosis@gmail.com', '2024-05-15 04:39:33', '$2y$12$DnZk2mQjZaVQfmXEKitgmePjgyOVSGf1UV1tKX3Z/HBE7Egni8LSa', NULL, NULL, '51|RCYEXMg8u7YQPoiCN5wmXWjwou8TDlSn1PR5UTmV319e25b8', '2024-05-15 04:39:13', '2024-05-15 04:40:43'),
(16, 'max', 'mxnchnl.7@gmail.com', '2024-05-15 18:13:15', '$2y$12$K8IJoenM1ntBbL7nlRzqGuLIxx/59LJYn.mWIFoCKqf2HqnXDTzSC', NULL, NULL, '54|7DVtUmA14mTGL1H7lStQyDLRMK1bOe0smA1fdlSz346b9fe6', '2024-05-15 18:09:40', '2024-05-15 18:13:16');

-- --------------------------------------------------------

--
-- Table structure for table `user_badges`
--

CREATE TABLE `user_badges` (
  `id` bigint UNSIGNED NOT NULL,
  `reference_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `badge_id` bigint UNSIGNED NOT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_badges`
--

INSERT INTO `user_badges` (`id`, `reference_number`, `user_id`, `badge_id`, `completed_at`, `created_at`, `updated_at`) VALUES
(6, '06ba801b9943', 9, 1, '2024-04-22 08:40:19', '2024-04-22 08:40:19', '2024-04-22 08:40:19'),
(7, 'd347758aa183', 9, 5, '2024-04-22 09:13:50', '2024-04-22 09:13:50', '2024-04-22 09:13:50'),
(8, 'fa54b463d138', 11, 1, '2024-04-22 09:17:16', '2024-04-22 09:17:16', '2024-04-22 09:17:16'),
(9, 'cc98dea27fcd', 11, 5, '2024-04-22 09:26:05', '2024-04-22 09:26:05', '2024-04-22 09:26:05'),
(10, '1c6df951d7a4', 12, 1, '2024-05-14 13:44:36', '2024-05-14 13:44:36', '2024-05-14 13:44:36'),
(11, 'b801468ca78a', 13, 1, '2024-05-15 04:39:34', '2024-05-15 04:39:34', '2024-05-15 04:39:34'),
(13, 'f49f8f84fdf9', 16, 1, '2024-05-15 18:13:16', '2024-05-15 18:13:16', '2024-05-15 18:13:16');

-- --------------------------------------------------------

--
-- Table structure for table `user_progress`
--

CREATE TABLE `user_progress` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `chapter_id` bigint UNSIGNED DEFAULT NULL,
  `lesson_id` bigint UNSIGNED DEFAULT NULL,
  `assessment_id` bigint UNSIGNED DEFAULT NULL,
  `completion_status` enum('completed','inprogress','incomplete') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'incomplete',
  `score` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_progress`
--

INSERT INTO `user_progress` (`id`, `user_id`, `chapter_id`, `lesson_id`, `assessment_id`, `completion_status`, `score`, `created_at`, `updated_at`) VALUES
(38, 9, 1, 1, NULL, 'completed', NULL, '2024-04-22 08:42:07', '2024-04-22 08:42:23'),
(39, 9, 1, 2, NULL, 'completed', NULL, '2024-04-22 08:42:21', '2024-04-22 08:43:53'),
(40, 9, 1, 2, NULL, 'inprogress', NULL, '2024-04-22 08:42:25', '2024-04-22 08:42:25'),
(41, 9, 1, 3, NULL, 'completed', NULL, '2024-04-22 08:43:51', '2024-04-22 08:44:09'),
(42, 9, 1, 4, NULL, 'completed', NULL, '2024-04-22 08:44:08', '2024-04-22 08:44:42'),
(43, 9, 1, NULL, NULL, NULL, 9, '2024-04-22 08:45:38', '2024-04-22 08:45:38'),
(44, 9, 2, 5, NULL, 'completed', NULL, '2024-04-22 08:45:47', '2024-04-22 08:49:55'),
(45, 9, 2, 6, NULL, 'completed', NULL, '2024-04-22 08:49:55', '2024-04-22 08:50:11'),
(46, 9, 2, 7, NULL, 'completed', NULL, '2024-04-22 08:50:10', '2024-04-22 08:50:22'),
(47, 9, 2, 8, NULL, 'completed', NULL, '2024-04-22 08:50:22', '2024-04-22 08:50:31'),
(48, 9, 2, NULL, NULL, NULL, 3, '2024-04-22 08:51:07', '2024-04-22 08:51:07'),
(49, 9, 2, NULL, NULL, NULL, 9, '2024-04-22 08:52:30', '2024-04-22 08:52:30'),
(50, 9, 3, 9, NULL, 'completed', NULL, '2024-04-22 08:52:31', '2024-04-22 08:53:03'),
(51, 9, 3, 10, NULL, 'completed', NULL, '2024-04-22 08:53:02', '2024-04-22 08:53:10'),
(52, 9, 3, 11, NULL, 'completed', NULL, '2024-04-22 08:53:09', '2024-04-22 08:53:17'),
(53, 9, 3, 12, NULL, 'completed', NULL, '2024-04-22 08:53:17', '2024-04-22 08:53:26'),
(54, 9, 3, NULL, NULL, NULL, 10, '2024-04-22 08:53:52', '2024-04-22 08:53:52'),
(55, 9, 4, 13, NULL, 'completed', NULL, '2024-04-22 08:53:54', '2024-04-22 08:54:10'),
(56, 9, 4, 14, NULL, 'completed', NULL, '2024-04-22 08:54:09', '2024-04-22 08:54:22'),
(57, 9, 4, 15, NULL, 'completed', NULL, '2024-04-22 08:54:21', '2024-04-22 08:54:30'),
(58, 9, 4, 16, NULL, 'completed', NULL, '2024-04-22 08:54:29', '2024-04-22 08:54:44'),
(59, 9, 4, NULL, NULL, NULL, 10, '2024-04-22 08:55:14', '2024-04-22 08:55:14'),
(60, 9, 5, 17, NULL, 'completed', NULL, '2024-04-22 08:55:16', '2024-04-22 08:55:33'),
(61, 9, 5, 18, NULL, 'completed', NULL, '2024-04-22 08:55:32', '2024-04-22 08:55:48'),
(62, 9, 5, 19, NULL, 'completed', NULL, '2024-04-22 08:55:45', '2024-04-22 08:56:02'),
(63, 9, 5, 19, NULL, 'inprogress', NULL, '2024-04-22 08:55:50', '2024-04-22 08:55:50'),
(64, 9, 5, 19, NULL, 'inprogress', NULL, '2024-04-22 08:55:51', '2024-04-22 08:55:51'),
(65, 9, 5, 20, NULL, 'completed', NULL, '2024-04-22 08:56:02', '2024-04-22 08:56:16'),
(66, 9, 5, 21, NULL, 'completed', NULL, '2024-04-22 08:56:15', '2024-04-22 08:56:50'),
(67, 9, 5, NULL, NULL, NULL, 10, '2024-04-22 08:57:21', '2024-04-22 08:57:21'),
(69, 11, 1, 1, NULL, 'completed', NULL, '2024-04-22 09:17:25', '2024-04-22 09:18:04'),
(70, 11, 1, 1, NULL, 'inprogress', NULL, '2024-04-22 09:17:25', '2024-04-22 09:17:25'),
(71, 11, 1, 2, NULL, 'completed', NULL, '2024-04-22 09:18:03', '2024-04-22 09:18:14'),
(72, 11, 1, 3, NULL, 'completed', NULL, '2024-04-22 09:18:13', '2024-04-22 09:18:21'),
(73, 11, 1, 4, NULL, 'completed', NULL, '2024-04-22 09:18:21', '2024-04-22 09:18:29'),
(74, 11, 1, NULL, NULL, NULL, 9, '2024-04-22 09:18:57', '2024-04-22 09:18:57'),
(75, 11, 2, 5, NULL, 'completed', NULL, '2024-04-22 09:18:58', '2024-04-22 09:19:08'),
(76, 11, 2, 6, NULL, 'completed', NULL, '2024-04-22 09:19:08', '2024-04-22 09:19:48'),
(77, 11, 2, 7, NULL, 'completed', NULL, '2024-04-22 09:19:44', '2024-04-22 09:19:58'),
(78, 11, 2, 8, NULL, 'completed', NULL, '2024-04-22 09:19:56', '2024-04-22 09:20:07'),
(79, 11, 2, NULL, NULL, NULL, 10, '2024-04-22 09:20:35', '2024-04-22 09:20:35'),
(80, 11, 3, 9, NULL, 'completed', NULL, '2024-04-22 09:20:36', '2024-04-22 09:21:03'),
(81, 11, 3, 10, NULL, 'completed', NULL, '2024-04-22 09:21:03', '2024-04-22 09:21:11'),
(82, 11, 3, 11, NULL, 'completed', NULL, '2024-04-22 09:21:11', '2024-04-22 09:21:19'),
(83, 11, 3, 12, NULL, 'completed', NULL, '2024-04-22 09:21:19', '2024-04-22 09:21:32'),
(84, 11, 3, NULL, NULL, NULL, 8, '2024-04-22 09:22:00', '2024-04-22 09:22:00'),
(85, 11, 4, 13, NULL, 'completed', NULL, '2024-04-22 09:22:01', '2024-04-22 09:22:16'),
(86, 11, 4, 14, NULL, 'completed', NULL, '2024-04-22 09:22:16', '2024-04-22 09:22:23'),
(87, 11, 4, 15, NULL, 'completed', NULL, '2024-04-22 09:22:23', '2024-04-22 09:22:31'),
(88, 11, 4, 16, NULL, 'completed', NULL, '2024-04-22 09:22:30', '2024-04-22 09:22:41'),
(89, 11, 4, NULL, NULL, NULL, 10, '2024-04-22 09:23:13', '2024-04-22 09:23:13'),
(90, 11, 5, 17, NULL, 'completed', NULL, '2024-04-22 09:23:14', '2024-04-22 09:23:25'),
(91, 11, 5, 18, NULL, 'completed', NULL, '2024-04-22 09:23:25', '2024-04-22 09:23:35'),
(92, 11, 5, 19, NULL, 'completed', NULL, '2024-04-22 09:23:34', '2024-04-22 09:23:45'),
(93, 11, 5, 20, NULL, 'completed', NULL, '2024-04-22 09:23:43', '2024-04-22 09:23:56'),
(94, 11, 5, 21, NULL, 'completed', NULL, '2024-04-22 09:23:55', '2024-04-22 09:24:05'),
(95, 11, 5, NULL, NULL, NULL, 10, '2024-04-22 09:24:40', '2024-04-22 09:24:40'),
(97, 12, 1, 1, NULL, 'completed', NULL, '2024-05-14 13:45:34', '2024-05-14 13:45:54'),
(98, 12, 1, 2, NULL, 'inprogress', NULL, '2024-05-14 13:45:54', '2024-05-14 13:45:54'),
(99, 13, 1, 1, NULL, 'completed', NULL, '2024-05-15 04:39:53', '2024-05-15 04:39:59'),
(100, 13, 1, 2, NULL, 'completed', NULL, '2024-05-15 04:39:59', '2024-05-15 04:40:06'),
(101, 13, 1, 3, NULL, 'completed', NULL, '2024-05-15 04:40:06', '2024-05-15 04:41:03'),
(102, 13, 1, 4, NULL, 'inprogress', NULL, '2024-05-15 04:41:03', '2024-05-15 04:41:03'),
(105, 16, 1, 1, NULL, 'completed', NULL, '2024-05-15 18:13:34', '2024-05-15 18:13:41'),
(106, 16, 1, 2, NULL, 'completed', NULL, '2024-05-15 18:13:41', '2024-05-15 18:13:51'),
(107, 16, 1, 3, NULL, 'completed', NULL, '2024-05-15 18:13:51', '2024-05-15 18:14:02'),
(108, 16, 1, 4, NULL, 'inprogress', NULL, '2024-05-15 18:14:02', '2024-05-15 18:14:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `badges`
--
ALTER TABLE `badges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chapters`
--
ALTER TABLE `chapters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chapters_programming_language_id_foreign` (`programming_language_id`);

--
-- Indexes for table `chapter_assessments`
--
ALTER TABLE `chapter_assessments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chapter_assessments_chapter_id_foreign` (`chapter_id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exams_programming_language_id_foreign` (`programming_language_id`);

--
-- Indexes for table `exam_scores`
--
ALTER TABLE `exam_scores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_scores_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `getting_starteds`
--
ALTER TABLE `getting_starteds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `getting_starteds_programming_language_id_foreign` (`programming_language_id`);

--
-- Indexes for table `getting_started_steps`
--
ALTER TABLE `getting_started_steps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `getting_started_steps_getting_started_id_foreign` (`getting_started_id`);

--
-- Indexes for table `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lessons_chapter_id_foreign` (`chapter_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `programming_languages`
--
ALTER TABLE `programming_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_badges`
--
ALTER TABLE `user_badges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_badges_user_id_foreign` (`user_id`),
  ADD KEY `user_badges_badge_id_foreign` (`badge_id`);

--
-- Indexes for table `user_progress`
--
ALTER TABLE `user_progress`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_progress_user_id_foreign` (`user_id`),
  ADD KEY `user_progress_chapter_id_foreign` (`chapter_id`),
  ADD KEY `user_progress_lesson_id_foreign` (`lesson_id`),
  ADD KEY `user_progress_assessment_id_foreign` (`assessment_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `badges`
--
ALTER TABLE `badges`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `chapters`
--
ALTER TABLE `chapters`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `chapter_assessments`
--
ALTER TABLE `chapter_assessments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `exam_scores`
--
ALTER TABLE `exam_scores`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `getting_starteds`
--
ALTER TABLE `getting_starteds`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `getting_started_steps`
--
ALTER TABLE `getting_started_steps`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `programming_languages`
--
ALTER TABLE `programming_languages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user_badges`
--
ALTER TABLE `user_badges`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user_progress`
--
ALTER TABLE `user_progress`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chapters`
--
ALTER TABLE `chapters`
  ADD CONSTRAINT `chapters_programming_language_id_foreign` FOREIGN KEY (`programming_language_id`) REFERENCES `programming_languages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `chapter_assessments`
--
ALTER TABLE `chapter_assessments`
  ADD CONSTRAINT `chapter_assessments_chapter_id_foreign` FOREIGN KEY (`chapter_id`) REFERENCES `chapters` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exams`
--
ALTER TABLE `exams`
  ADD CONSTRAINT `exams_programming_language_id_foreign` FOREIGN KEY (`programming_language_id`) REFERENCES `programming_languages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_scores`
--
ALTER TABLE `exam_scores`
  ADD CONSTRAINT `exam_scores_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `getting_starteds`
--
ALTER TABLE `getting_starteds`
  ADD CONSTRAINT `getting_starteds_programming_language_id_foreign` FOREIGN KEY (`programming_language_id`) REFERENCES `programming_languages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `getting_started_steps`
--
ALTER TABLE `getting_started_steps`
  ADD CONSTRAINT `getting_started_steps_getting_started_id_foreign` FOREIGN KEY (`getting_started_id`) REFERENCES `getting_starteds` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lessons`
--
ALTER TABLE `lessons`
  ADD CONSTRAINT `lessons_chapter_id_foreign` FOREIGN KEY (`chapter_id`) REFERENCES `chapters` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_badges`
--
ALTER TABLE `user_badges`
  ADD CONSTRAINT `user_badges_badge_id_foreign` FOREIGN KEY (`badge_id`) REFERENCES `badges` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_badges_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_progress`
--
ALTER TABLE `user_progress`
  ADD CONSTRAINT `user_progress_assessment_id_foreign` FOREIGN KEY (`assessment_id`) REFERENCES `chapter_assessments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_progress_chapter_id_foreign` FOREIGN KEY (`chapter_id`) REFERENCES `chapters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_progress_lesson_id_foreign` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_progress_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
