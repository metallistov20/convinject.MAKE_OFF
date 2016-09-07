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

#ifndef _MAIN_H_
#define _MAIN_H_


#define DGENERAL(format, ...) fprintf (stdout, format, __VA_ARGS__)

//#define DXML(format, ...) fprintf (stdout, format, __VA_ARGS__)

#define DSTRUCT(format, ...) fprintf (stdout, format, __VA_ARGS__)

#define DSSH(format, ...) fprintf (stdout, format, __VA_ARGS__)

#define DHTTP(format, ...) fprintf (stdout, format, __VA_ARGS__)


#endif /* _MAIN_H_ */