# Zipline.inc

Create fun and useful ziplines players can use to speed across large areas quickly.

Warning: does not work well with laggy players.

## Installation

Simply install to your project:

```bash
sampctl package install Southclaws/samp-zipline
```

Include in your code and begin using the library:

```pawn
#include <zipline>
```

## Usage

## Constants

* `MAX_ZIPLINE`:
  * Zipline creation limit.

## Functions

* `CreateZipline(Float:x1, Float:y1, Float:z1, Float:x2, Float:y2, Float:z2, worldid = 0, interiorid = 0)`:
  * Create a zipline between the two sets of coordinates.
* `DestroyZipline(ziplineid)`:
  * Delete a zipline from the game world.
* `IsValidZipline(ziplineid)`:
  * Returns if a zipline ID is a valid zipline.
* `GetZiplineStartAreaID(ziplineid)`:
  * Returns the ID of the streamer area used for the start point.
* `GetZiplineEndAreaID(ziplineid)`:
  * Returns the ID of the streamer area used for the end point.
* `GetZiplineLineID(ziplineid)`:
  * Returns the ID of the line segment object used for the zipline.
* `GetZiplineStartPos(ziplineid, &Float:x, &Float:y, &Float:z)`:
  * Returns the start point position.
* `SetZiplineStartPos(ziplineid, Float:x, Float:y, Float:z)`:
  * Sets the start point position and updates the line segment object accordingly.
* `GetZiplineEndPos(ziplineid, &Float:x, &Float:y, &Float:z)`:
  * Returns the end point position.
* `SetZiplineEndPos(ziplineid, Float:x, Float:y, Float:z)`:
  * Sets the end point position and updates the line segment object accordingly.
* `GetZiplineVector(ziplineid, &Float:x, &Float:y, &Float:z)`:
  * Returns the 3D direction vector of the zipline from the start point.
* `GetZiplineWorld(ziplineid)`:
  * Returns the virtual world in which the zipline is located.
* `SetZiplineWorld(ziplineid, worldid)`:
  * Sets the virtual world of the zipline and updates the line segment object accordingly.
* `GetZiplineInterior(ziplineid)`:
  * Returns the interior in which the zipline is located.
* `SetZiplineInterior(ziplineid, interiorid)`:
  * Sets the interior of the zipline and updates the line segment object accordingly.
* `IsPlayerOnZipline(playerid)`:
  * Returns if a player is currently on any zipline.
* `GetPlayerZipline(playerid)`:
  * Returns the zipline that a player is currently on.

## Hooked

* `OnPlayerKeyStateChange`:
  * For checking when a player interacts with a zipline entry point.
* `OnPlayerEnterDynamicArea`:
  * For checking when the player reaches the end of a zipline so they can be removed.

## Testing

To test, simply run the package:

```bash
sampctl package run
```
