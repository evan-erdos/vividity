/* Ben Scott - 201505142021 - vividity - macros */

#define null nil
#define print say
#define println(s) (say('\n'+(s)))
#define clear inputManager.getKey(null,null); cls()
#define next inputManager.getKey(null,null)

#define SUDO

Thing template 'name' @location? "desc";
Person template 'name' @location? "desc";
Room template 'roomName' "desc"? 'destName'? 'name'?;
