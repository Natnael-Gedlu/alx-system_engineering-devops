0-iam_betty '''su betty''' excutes the command switch the current user to the user betty 
1-who_am_i '''whoami''' prints the effective username of the current user
2-groups '''group''' prints all the groups the current user is part of
3-new_owner '''sudo chown betty hello''' changes the owner of the file hello to the user betty
4-empty '''touch empty''' creates an empty file called hello.
5-execute '''chmod 744 hello''' adds execute permission to the owner of the file hello
6-multiple_permissions '''chmod 774 hello''' adds execute permission to the owner and the group owner, and read permission to other users, to the file hello
7-everybody '''chmod 777 hello'''adds execution permission to the owner, the group owner and the other users, to the file hello
8-James_Bond '''chmod 447 hello''' sets all the permission only for the other users, to the file hello 
9-John_Doe '''chmod 753 hello''' sets the mode of the file hello to -rwxr-x-wx
