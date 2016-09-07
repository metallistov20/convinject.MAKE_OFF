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

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "structs.h"

/* DSTRUCT() definition  */
#include "main.h"

/* Appends or creates, depending on existance */
void _AddTarget(pTgtStructType * ppbThisTarget, pDtaStructType pDta)
{
	if (NULL == *ppbThisTarget)
	{

		/* Only one chain, for breginning */
		*ppbThisTarget = (pTgtStructType) malloc ( sizeof (TgtStructType) );

		/* Check if successful */
		if (NULL == *ppbThisTarget)
		{
			DSTRUCT("[%s] %s: ERROR: failure on creation \n", __FILE__, __func__);
		}

		if (NULL != pDta)
		{
			(*ppbThisTarget)->pDta = (pDtaStructType) malloc( sizeof (struct _DtaStructType) );

			if (NULL != (*ppbThisTarget)->pDta)
			{
				(*ppbThisTarget)->pDta->pcType = (char*) malloc (strlen (pDta->pcType) +1 );
				strcpy((*ppbThisTarget)->pDta->pcType, pDta->pcType);

				(*ppbThisTarget)->pDta->pcName = (char*) malloc (strlen (pDta->pcName) +1 );
				strcpy((*ppbThisTarget)->pDta->pcName, pDta->pcName);

				((*ppbThisTarget)->pDta)->pcAddress = (char*) malloc (strlen (pDta->pcAddress) +1 );
				strcpy((*ppbThisTarget)->pDta->pcAddress, pDta->pcAddress);

				(*ppbThisTarget)->pDta->pcLogin = (char*) malloc (strlen (pDta->pcLogin) +1 );
				strcpy((*ppbThisTarget)->pDta->pcLogin, pDta->pcLogin);

				(*ppbThisTarget)->pDta->pcPasswd = (char*) malloc (strlen (pDta->pcPasswd) +1 );
				strcpy((*ppbThisTarget)->pDta->pcPasswd, pDta->pcPasswd);

				(*ppbThisTarget)->pDta->pcDatafile = (char*) malloc (strlen (pDta->pcDatafile) +1 );
				strcpy((*ppbThisTarget)->pDta->pcDatafile, pDta->pcDatafile);

				(*ppbThisTarget)->pDta->pcProto = (char*) malloc (strlen (pDta->pcProto) +1 );
				strcpy((*ppbThisTarget)->pDta->pcProto, pDta->pcProto);

			}
			else
				DSTRUCT("[%s] %s: ERROR: can't allocate mem. while copying initialization data\n", __FILE__, __func__);

		}
		else
			DSTRUCT("[%s] %s: ERROR: bad initialization data\n", __FILE__, __func__);

		/* Lock-up  */
		(*ppbThisTarget)->pNext = NULL;
	
	}
	else
	{
	/* introduce two temporary variables of type 'pTgtStructType' */
	pTgtStructType pbChild, pbTempTgtStructType;

		/* point with first temporary element to head of Target */
		pbChild = *ppbThisTarget;

		/* allocate a space for new record in Behorde */
		pbTempTgtStructType = (pTgtStructType) malloc ( sizeof (TgtStructType));

		/* Skip everything */
		while (NULL != pbChild->pNext )

			/* til the tail */
			pbChild = pbChild->pNext;
		
		/* if previous memory allocation was successful */
		if(pbTempTgtStructType != NULL)
		{
			if (NULL != pDta)
			{
				pbTempTgtStructType->pDta = (pDtaStructType) malloc( sizeof (struct _DtaStructType) );

				if (NULL != pbTempTgtStructType->pDta)
				{

					pbTempTgtStructType->pDta->pcType = (char*) malloc (strlen (pDta->pcType) +1 );
					strcpy(pbTempTgtStructType->pDta->pcType, pDta->pcType);

					pbTempTgtStructType->pDta->pcName = (char*) malloc (strlen (pDta->pcName) +1 );
					strcpy(pbTempTgtStructType->pDta->pcName, pDta->pcName);

					pbTempTgtStructType->pDta->pcAddress = (char*) malloc (strlen (pDta->pcAddress) +1 );
					strcpy(pbTempTgtStructType->pDta->pcAddress, pDta->pcAddress);

					pbTempTgtStructType->pDta->pcLogin = (char*) malloc (strlen (pDta->pcLogin) +1 );
					strcpy(pbTempTgtStructType->pDta->pcLogin, pDta->pcLogin);

					pbTempTgtStructType->pDta->pcPasswd = (char*) malloc (strlen (pDta->pcPasswd) +1 );
					strcpy(pbTempTgtStructType->pDta->pcPasswd, pDta->pcPasswd);

					pbTempTgtStructType->pDta->pcDatafile = (char*) malloc (strlen (pDta->pcDatafile) +1 );
					strcpy(pbTempTgtStructType->pDta->pcDatafile, pDta->pcDatafile);

					pbTempTgtStructType->pDta->pcProto = (char*) malloc (strlen (pDta->pcProto) +1 );
					strcpy(pbTempTgtStructType->pDta->pcProto, pDta->pcProto);
				}
				else
					DSTRUCT("[%s] %s: ERROR: can't allocate mem. while copying initialization data\n",
					 __FILE__, __func__);

			}
			else
				DSTRUCT("[%s] %s: ERROR: bad initialization data\n", 	__FILE__, __func__);
		
			/* set a look-up */
			pbTempTgtStructType->pNext = NULL;		

			/* append a new Target entry to the end of existing Target */
			pbChild->pNext = pbTempTgtStructType;
		}
		else
			/* memory for new recored hasn't been allocated */
			return; 
	}
}

extern int process_ssh_target(char * pcAddress, char * pcLogin, char * pcPasswd,char * pcDatafile);
extern int process_http_target(char * pcAddress, char * pcLogin, char * pcPasswd,char * pcDatafile);

/* deploy information about all current Targets */
void _ProcessTargets(/*pHandle phThisHandle, */pTgtStructType pbThisTarget)
{
/* a storage for number under which the item is registerd in Target */
unsigned char _the_number;

int (* process_target_func) (char *, char *, char *, char *);
    
    /* process each Target's entry */
    while (pbThisTarget != NULL )
    {
	DSTRUCT("[%s] %s:  pcType<%s> pcName<%s> pcAddress<%s> pcLogin<%s> pcPasswd<%s> pcDatafile<%s> pcProto<%s>\n", 
	__FILE__, __func__,
 	pbThisTarget->pDta->pcType,
	pbThisTarget->pDta->pcName,
	pbThisTarget->pDta->pcAddress,
	pbThisTarget->pDta->pcLogin,
	pbThisTarget->pDta->pcPasswd,
	pbThisTarget->pDta->pcDatafile,
	pbThisTarget->pDta->pcProto    );

#if 1
	if ( 0 == strcmp ("ssh", pbThisTarget->pDta->pcProto) )
		process_target_func = name;//process_ssh_target;
	else
		if ( 0 == strcmp ("http", pbThisTarget->pDta->pcProto) )
			process_target_func = name1;//process_http_target;

	/* Call desired function */
	(*process_target_func)(
			pbThisTarget->pDta->pcAddress,
			pbThisTarget->pDta->pcLogin, 
			pbThisTarget->pDta->pcPasswd,
			pbThisTarget->pDta->pcDatafile);

	/* Go to next record of Target */
	pbThisTarget =  pbThisTarget->pNext;
#endif /* 0 */
    };	
    
}


/* erase an entire Target */
void _DeleteTarget(pTgtStructType pbThisTarget)
{
/* a tomparary variable of type 'pTgtStructType' */
pTgtStructType pbChild;

	/* Walk through entire list and delete each chain */
	while (NULL != pbThisTarget)
	{
		if (NULL != pbThisTarget->pDta) 
		{
			free(pbThisTarget->pDta->pcType);

			free(pbThisTarget->pDta->pcName);

			free(pbThisTarget->pDta->pcAddress);

			free(pbThisTarget->pDta->pcLogin);

			free(pbThisTarget->pDta->pcPasswd);

			free(pbThisTarget->pDta->pcDatafile);

			free(pbThisTarget->pDta->pcProto);

			free (pbThisTarget->pDta);
		}
		else
			DSTRUCT("[%s] %s: ERROR: nothing to release\n", __FILE__, __func__);
		    
		/* preserve a pointer to next record */		    
		pbChild = pbThisTarget->pNext;
		
		/* free space occupied by current record */
		free (pbThisTarget);
		
		/* Go to next record */
		pbThisTarget = pbChild;
	}
	
	/* Done */
	return; 
}
