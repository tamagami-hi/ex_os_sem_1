#!/usr/bin/awk -f

# BEGIN block is executed before any input lines are read
BEGIN {
    print "----- AWK Script Execution Started -----"
    print "Name\tDepartment\tSalary"
    
    # Defining the sample data directly within the script
    data = "ajay manager account 45000\n" \
           "sunil clerk account 25000\n" \
           "varun manager sales 50000\n" \
           "amit manager account 47000\n" \
           "tarun peon sales 15000\n" \
           "deepak clerk sales 23000\n" \
           "sunil peon sales 13000\n" \
           "satvik director purchase 80000"
           
    # Splitting the data into lines and storing them in an array
    num_lines = split(data, lines, "\n")
    
    # Processing each line
    for (i = 1; i <= num_lines; i++) {
        $0 = lines[i]
        # Default action: Print each line
        print $1 "\t" $3 "\t" $4
        
        # Pattern matching: Print lines where the department is "sales"
        if ($3 == "sales") {
            print "Sales Department: " $1 "\t" $3 "\t" $4
        }
        
        # Compute the total salary of all employees
        total_salary += $4
    }
}

# END block is executed after all input lines are read
END {
    print "Total Salary of All Employees: " total_salary
    print "----- AWK Script Execution Completed -----"
}
