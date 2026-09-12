# Shell Scripting Notes

## Day 1 — Introduction to Shell Scripting

### Topics Learned

* Learned about the `echo` command.
* Learned how to create a Shell script.
* Learned how to give execute permission to a Shell script using the `chmod` command.

### `echo` Command

The `echo` command is used to print a message or output to the console.

Example:

```bash
echo "Hello World"
```

Output:

```text
Hello World
```

### Creating a Shell Script

Create a file with the `.sh` extension:

```bash
touch script.sh
```

Add the following code:

```bash
#!/bin/bash

echo "Hello World"
```

### Giving Execute Permission

Use the `chmod` command to give execute permission:

```bash
chmod +x script.sh
```

Run the script:

```bash
./script.sh
```

---

## Day 2 — Variables in Shell Scripting

Learned about **variables in Shell scripting**.

Variables are used to store data that can be used later in a Shell script.

Example:

```bash
name="Prikshit"

echo "Hello $name"
```

Output:

```text
Hello Prikshit
```

### Important Point

There should be **no spaces around `=`** when assigning a value to a variable.

Correct:

```bash
name="Prikshit"
```

Incorrect:

```bash
name = "Prikshit"
```
