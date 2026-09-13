current_date=$(date)
current_user=$(whoami)
current_directory=$(pwd)


Numeric & String Comparisons in Bash

1. What is Comparison?

Comparison means checking two values and deciding whether a condition is True or False.

In Bash, comparisons are mainly of two types:

Numeric Comparison → comparing numbers
String Comparison → comparing text

-eq → Equal
-ne → Not Equal
-gt → Greater Than
-lt → Less Than
-ge → Greater or Equal
-le → Less or Equal

| Operator | Meaning               | Example     |
| -------- | --------------------- | ----------- |
| `-eq`    | Equal to              | `10 -eq 10` |
| `-ne`    | Not equal to          | `10 -ne 5`  |
| `-gt`    | Greater than          | `10 -gt 5`  |
| `-lt`    | Less than             | `5 -lt 10`  |
| `-ge`    | Greater than or equal | `10 -ge 10` |
| `-le`    | Less than or equal    | `5 -le 10`  |


Bash Script Arguments — Notes
1. What are Script Arguments?

Script arguments are values passed to a Bash script from the command line when the script is executed.

They allow us to provide input to a script without modifying the script or using read.

Example
./deploy.sh production

2. Why Use Arguments?

Script arguments are useful when:

Passing configuration to a script
Automating tasks
Running deployment scripts
Passing file names
Passing environment names
Passing server/region information
Using scripts in CI/CD pipelines
Example
./deploy.sh production
./deploy.sh staging
./deploy.sh development

The same script can work for different environments.

3. Special Argument Variables

Bash provides special variables to access arguments.

Variable	Meaning
$0	Script name/path
$1	First argument
$2	Second argument
$3	Third argument
$#	Number of arguments
$@	All arguments
4. $0 — Script Name

Contains the name/path used to execute the script.

echo "Script: $0"

If executed as:

./deploy.sh production

Then:

$0 = ./deploy.sh
Use

Mainly used in usage/error messages:

echo "Usage: $0 <environment>"
5. $1 — First Argument

Contains the first argument.

./deploy.sh production

Then:

$1 = production

Example:

environment="$1"

echo "Environment: $environment"
6. $2 — Second Argument

Contains the second argument.

./deploy.sh production centralindia

Then:

$1 = production
$2 = centralindia

Example:

environment="$1"
region="$2"
7. $3, $4, etc.

Arguments continue in the same pattern:

$1 → First argument
$2 → Second argument
$3 → Third argument
$4 → Fourth argument

Example:

./deploy.sh production centralindia frontend
$1 = production
$2 = centralindia
$3 = frontend
8. $# — Number of Arguments

$# gives the total number of arguments passed to the script.

Example:

./deploy.sh production centralindia frontend

Then:

$# = 3
Use Case

Used to validate whether the required number of arguments was provided.

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <environment> <region>"
    exit 1
fi

This means:

If the number of arguments is not equal to 2, show the correct usage and stop the script.

9. $@ — All Arguments

$@ represents all arguments passed to the script.

Example:

./deploy.sh production centralindia frontend

Then:

$@ = production centralindia frontend

Example:

echo "Arguments: $@"

Output:

Arguments: production centralindia frontend
Common use

Process multiple arguments using a loop:

for arg in "$@"; do
    echo "Argument: $arg"
done
10. Complete Example

Command:

./deploy.sh production centralindia frontend

Script:

#!/bin/bash

echo "Script: $0"
echo "Environment: $1"
echo "Region: $2"
echo "Application: $3"
echo "Total arguments: $#"
echo "All arguments: $@"

Output:

Script: ./deploy.sh
Environment: production
Region: centralindia
Application: frontend
Total arguments: 3
All arguments: production centralindia frontend
11. Arguments vs read
read

Used when the script needs interactive input:

read -p "Enter environment: " environment

User enters:

production
Arguments

Used when input is provided when starting the script:

./deploy.sh production
DevOps perspective
read       → Interactive
Arguments  → Automation

Arguments are especially useful in:

GitHub Actions
Jenkins
Azure DevOps
Cron jobs
Deployment scripts
Docker automation
12. Real DevOps Example
./deploy.sh production eastus frontend

Here:

$1 → Environment
$2 → Azure region
$3 → Application

Script:

#!/bin/bash

environment="$1"
region="$2"
application="$3"

echo "Deploying $application"
echo "Environment: $environment"
echo "Region: $region"

The same script can be reused:

./deploy.sh development centralindia frontend

or:

./deploy.sh production eastus backend
Quick Revision
