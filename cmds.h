/*
 (C) Copyright 2016, TP-Link Inc, konstantin.mauch@tp-link.com

 This program is free software; you can redistribute it and/or
 modify it under the terms of the GNU General Public License as
 published by the Free Software Foundation; either version 2 of
 the License, or (at your option) any later version.

 This program is distributed in the hope that it will be useful,
 but WITHOUT any WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.

 You should have received a copy of the GNU General Public License
 along with this program; if not, write to the Free Software
 Foundation, Inc., 59 Temple Place, Suite 330, Boston,
 MA 02111-1307 USA
*/

#ifndef _CMDS_H_
#define _CMDS_H_


/* Dynamic struct to contain SSH commands in field <pcCmd> */
typedef struct _CmdType
{
	/* String to point to Command */
	char * pcCmd;

	/* Next time point in the chain */
	struct _CmdType * pNext;

} CmdType, *pCmdType;


/* Enroll single command into struct */
int EnrollCmd(pCmdType * ppThisPointChain, char * pcCmd);

/* Process all commands from struct */
int ProcessCmds(pCmdType pCmdChainPar);

/* Free memory occupied by dynamic struct */
void DeleteCmd(pCmdType * ppThisCmdChain);

#endif /* _CMDS_H_ */
