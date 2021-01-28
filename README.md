This project organises a script that organises a given directory on a ubuntu environment.

To create ubuntu environment (skip if already exist!):
- use 'Vagrant up' to create a ubuntu environment with a random directory.
vagrant ssh into the environment.

Run sudo ./scripts/organise-directory to organise your directory in the following format below:
the directory being organised is the directory folder.

We have a directory containing: music, videos, images logs and perhaps other files. Your task is to organise files onto categories and get rid of some of them.

Specifically, after your script has made changes, the directory should appear as follows:

- A new directory "music" should contain all files with ".mp3" and ".flac" extensions;

- A new directory "images" should contain all files with ".jpg" and ".png" extensions;

- A new directory "videos" should contain all files with ".avi" and ".mov" extensions;

- All files with the .log extension should be removed;

- other files not already with the .log extension should not be changed.

For example, given the following directory contents:

boat.png
ship.jpg
action.mov
errors.log
thriller.avi
information.txt
song.mp3
podcast.flac
plant-large.jpeg
15.11.2014__t

images/
  boat.png
  ship.jpg
music/
  song.mp3
  podcast.flac
videos/
  action
  thriller.avi
15.11.2014__t
some-directory/
  nested-errorfile.log

Assumptions:
