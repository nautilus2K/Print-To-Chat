//Squirrel

//Function:
::ChatMsg <- function(sMsg = "")
{
	SendToServerConsole("sm_print_to_chat " + sMsg);
}

//Example:
ChatMsg("Hello, World!");
ChatMsg("\"Hello, nautilus2K!\"");
ChatMsg("\"Hello, {blue}nautilus2K{default}!\"");