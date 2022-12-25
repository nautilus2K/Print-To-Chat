//SourcePawn

/*
	ChangeLog:
	
	* v1.0.0 - Created.
	* v1.0.1 - Added colors.
*/

#pragma semicolon 1

#include <sourcemod>
#include <colors>

#define PLUGIN_VER "1.0.1"

public Plugin:myinfo =
{
	name = "Print to chat",
	author = "nautilus2K",
	description = "Allows you to print a chat message w/o 'console: '",
	version = PLUGIN_VER,
	url = "https://www.google.com"
}

public void OnPluginStart()
{
	RegConsoleCmd("sm_print_to_chat", Cmd_PrintToChat);
}

public Action:Cmd_PrintToChat(client, args)
{
	if (client == 0)
	{
		if (!IsDedicatedServer() && IsClientInGame(1)) client = 1;
		else return Plugin_Handled;
	}
	
	decl String:sText[256];
	GetCmdArg(1, sText, sizeof (sText));
	Format(sText, sizeof (sText), "%s", sText);
	CPrintToChatAll(sText);
	return Plugin_Handled;
}

