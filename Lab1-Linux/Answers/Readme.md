Answers to questions of Lab1-Linux (https://github.com/fuankarion/Vision17/tree/master/Lab1-Linux)

1. The grep command searches the input file(s) for lines matching a given pattern [1].
2. When the -prune option of the find command is set to true and the file is a directory, the search does not descend into it [1].
3. The cut command prints selected parts of lines from each file [1].
4. The rsync command allows to copy files rapidly and (possibly) remotely [1].
5. The diff command searches, line by line, the differences between two files and then prints those differences [1].
6. The tail command presents the last 10 lines of a file given as an input [1].
7. The tail -f command appends the output data as the file grows [1].
8. The link command creates a link to an existing file [1].
9. The text '#! /bin/bash' at the beginning of a script tells the shell what interpreter to run. [2]
10. There are 38 users in the server. To inspect this we can use the command: cat /etc/passwd , because the file passwd contains the information about the users of the server. [7]
11. 
12. 
13. To download the Berkely 500 database from the terminal, we use the command wget followed by the url of the file:
wget http://www.eecs.berkeley.edu/Research/Projects/CS/vision/grouping/BSR/BSR_bsds500.tgz
To uncompress the .tgz file we use the tar command:
tar -xvzf ./NSR_bsds500.tgz -C ./Vision/BSDS500
The -C attribute allows us to unzip the .tgz file in a different directory. [3]
14. The uncompressed dataset takes 75M in disk. This was verified by means of the following command, disk usage:
du -hs ./BSDS500
The attributes -h and -s stand for 'human readable' and 'summary' [4].

There are 503 image files within the dataset. These images are contained within the directory /BSR/BSDS500/data/images
To get the number of image files we performed the following command on the terminal:
ls -lR | grep ^- | wc -l
Which is a method to count files recursively within a directory's subdirectories [5].
15. Image files are in JPEG format. Their resolution (the number of pixels) can be found out through the package 'convert' from ImageMagick. First, we need to install ImageMakgick via apt-get install imagemagick. Then, we may perform the following command:
convert 236017.jpg -print "Size: %wx%h\n" /dev/null, which returns the number of pixels of the image; 481x321 in this case [6].
16. To know how many of these images have landscape orientation we may write a script which gets the size of each image file, such as in the previous question. The script would count only when the first dimension is greater than the second one. The resulting count will correspond to the number of landscape images, while the number of portrait images may be calculated substracting this number from the total number of images (square photographs will be considered portraits).
17. From the imagemagick package, we can use the 'mogrify' program to crop all the images so that they fit certain dimensions. To do this, we take advantage of the -crop geometry{widthxheight!}{} command. The values in widthxheight! set the new image dimensions after cropping, without preserving the original image ratio. These are forms of the geometry argument [8],[9].


References
[1] : Ubuntu manual (man).
[2] : http://stackoverflow.com/questions/8967902/why-do-you-need-to-put-bin-bash-at-the-beginning-of-a-script-file
[3] : http://askubuntu.com/questions/499807/how-to-unzip-tgz-file-using-the-terminal
[4] : http://askubuntu.com/questions/1224/how-do-i-determine-the-total-size-of-a-directory-folder-from-the-command-line
[5] : http://askubuntu.com/questions/34099/find-number-of-files-in-folder-and-sub-folders
[6] : http://superuser.com/questions/275502/how-to-get-information-about-an-image-picture-from-the-linux-command-line
[7] : https://www.cyberciti.biz/faq/linux-list-users-command/
[8] : http://www.imagemagick.org/script/command-line-processing.php#geometry
[9] : http://www.imagemagick.org/script/command-line-options.php#crop



