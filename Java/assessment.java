

📌 Basic Java Questions

1. What is Java?

Java is a high-level, object-oriented programming language used to build platform-independent applications using the principle "Write Once, Run Anywhere" (WORA).



2. What are the main features of Java?

Object-Oriented

Platform Independent

Secure

Robust

Multithreaded

High Performance (with JVM optimizations)



---

3. What is JVM?

JVM (Java Virtual Machine) is a runtime environment that executes Java bytecode and makes Java platform-independent.


---

4. What is JDK and JRE?

JDK (Java Development Kit): Used for developing Java applications

JRE (Java Runtime Environment): Used to run Java applications



---

5. What is Object-Oriented Programming (OOP)?

OOP is a programming paradigm based on objects and classes.


---

📌 OOP Concepts

6. What are the 4 pillars of OOP?

1. Encapsulation


2. Inheritance


3. Polymorphism


4. Abstraction




---

7. What is Encapsulation?

Wrapping data and methods into a single unit (class) and restricting access using access modifiers.


---

8. What is Inheritance?

Mechanism where one class acquires properties of another class.


---

9. What is Polymorphism?

Ability of a method to perform different tasks based on input.

Types:

Compile-time (Method Overloading)

Runtime (Method Overriding)



---

10. What is Abstraction?

Hiding implementation details and showing only essential features.


---

📌 Core Java Concepts

11. Difference between == and equals()?

== → compares memory reference

equals() → compares actual content



---

12. What is String immutability?

String objects cannot be changed after creation.


---

13. Difference between ArrayList and LinkedList?

Feature	ArrayList	LinkedList

Structure	Dynamic array	Doubly linked list
Access	Fast	Slow
Insertion	Slow	Fast



---

14. What is Exception Handling?

Mechanism to handle runtime errors using:

try

catch

finally

throw



---

15. Checked vs Unchecked Exceptions?

Checked	Unchecked

Checked at compile time	Occur at runtime
Example: IOException	Example: NullPointerException



---

📌 Advanced Java

16. What is Multithreading?

Executing multiple threads simultaneously to improve performance.


---

17. What is Synchronization?

Controlling access of multiple threads to shared resources.


---

18. What is a Collection Framework?

A set of classes and interfaces used to store and manipulate data (List, Set, Map).


---

19. What is HashMap?

A data structure that stores key-value pairs and allows fast retrieval.


---

20. What is Spring Boot?

Spring Boot is a framework used to build production-ready Java applications quickly with minimal configuration.


---

📌 Coding Question

21. Reverse a String in Java

public class ReverseString {
    public static void main(String[] args) {
        String str = "Java";
        String reversed = "";

        for(int i = str.length() - 1; i >= 0; i--) {
            reversed += str.charAt(i);
        }

        System.out.println(reversed);
    }
}




