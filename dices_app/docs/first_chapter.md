# Value Types
---

| Type  | Numbers | Information  | Example |
| ------------- | ------------- | ------------- | ------------- |
| int  | Integer numbers  | Numbers without decimal places  | 29, 15  |
| double  | Fractional numbers  | Numbers with decimal places | 1.3, 3.5  |
| num  | Integer or fructional numbers  | Numbers with or without decimal places  | 1, 2.43  |
| String  | Text  | Text wrapped with single or double quotes  | 'Hello World'  |
| bool  | Boolean values  | true or false  | true or false  |
|object  | Any kind of object  | The base type of all values  | 'Hi', 20, false  |


Variable are Data Containers determined with var.
Because we can reassign a value to a var many times we get errors like
> A value of type 'Null' can't be assigned to a parameter of type 'AlignmentGeometry' in a const constructor.
Try using a subtype, or removing the keyword 'const'  


**final**  
The data container will never receive another value, the value can be added in runTime or on execution which is the difference between const and final.

**const**  
The data container will also never get re-assigned but it provides extra info to data, it is locked when the app is compiled 
