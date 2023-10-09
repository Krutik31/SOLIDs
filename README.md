
# SOLID Principles

SOLID Principles tells us about the best and efficient way to write a code so that it can be long terms maintainable and easy for other developer to understand.

### SRP: Single Responsibility Principle

```
Every single class must be responsible for a single operation.
Multiple task's logic shoud not written in a single class. 

```

### OCP: Open/Closed Principle

```
A class is always open for an extension but closed for a modification.

It is not a good practise to modify the existing code or a logic, It may break a code or raise an error. so always write new code instead of changing the current code, if possible. 

```

### LSP: Liskov Substitution Principle

```
This principle helps substitute any subclass or its method without breaking things.
By following this principle, We should define a common method of subclasses in base or parent class also. So that in future if we want to remove that method from subclass then calling to that method will not raise any error but it will call base class' method.

```

### ISP: Interface Segregation Principle

```
Ruby does not have a concept of interfaces as it is dynamically typed language.

ISP tells that We should not be forced to depend on the interfaces that we don't use.
Ruby does not have interfaces but I have still mimic the functionality of it in a code for taking an example and understanding this principle.

```

### DIP: Dependency Inversion Principle

```
This principle states that the caller should have a full control over the dependencies and on the inversion of the configurations.

```