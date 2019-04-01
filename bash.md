# Cmd line basics

## Basic commands

* change directory: `cd /path/to/dir`
* touch file: `touch /path/to/new/file.format`
* make directory: `mkdir /path/to/new/dir`
* actual path: `pwd`
* file and directory list: `ls`, `ls -a`, `ls -l`, `ls -al`
* aliasing: `alias gohome="cd ~"`, `gohome`
* printing: `echo "Hello World!"`, `HELLO="Hello World!"; echo $HELLO`
* copy paste: `cp /path/to/source/file /path/to/destination/file`
* moving and renaming files: `mv /path/to/source/file /path/to/destination/file`, to rename file use `mv /same/path/oldfilename /same/path/newfilename`
* remove files and directories: `rm /path/to/file`, remove directory recursively `rm -r /path/to/dir`, force remove `rm -f`, `rm -rf`
* manuals: `man ...`, ex: `man ls`

## >, >>, |

* `>` - write to file from beginning `echo 'Some Text' > /path/to/file`
* `>>` - write to end of file (next line of file) `echo 'Some Text' >> /path/to/file`
* `|` - it's named 'Pipe', Pipes let you use the output of a program as the input of another one `ls -l | grep 'filename contain'`

### Cat, Head, Tail, Grep

* Printing files to console: `cat /path/to/file`
* Print first 10 lines of file: `head /path/to/file`
* Print first 15 lines of file: `head -15 /path/to/file` or `head -n15 /path/to/file`
* Print last 10 lines of file: `tail /path/to/file`
* Print last 15 lines of file: `tail -n15 /path/to/file`
* Print file from 20. line to end `tail -n +20 /path/to/file`
* Monitoring file: `tail -f /path/to/file`
* Filtering lines of file `cat /path/to/file | grep 'filtering text'`
* Filtering lines of file with 5 lines before and 5 lines after: `cat /path/to/file | grep -A5 -B5 'filtering text'`

### Compress and Un-compress files

* gzip
> * compress: `gzip /path/to/file/or/dir`
> * compress all files, for example, ending on `.jpg`: `gzip /path/to/dir/*.jpg`
> * decompress: `gzip -d /path/to/compressed/file.gz` or `gunzip /path/to/compressed/file.gz`
* bzip2
> * compress: `bzip2 /path/to/file/or/dir`
> * compress all files, for example, ending on `.jpg`: `bzip2 /path/to/dir/*.jpg`
> * decompress: `bzip2 -d /path/to/compressed/file.bz2` or `bunzip2 /path/to/compressed/file.bz2`
* zip
> * compress: `zip /path/to/compressed/destination/file.zip /path/to/file/to/compress`
> * compress all files, for example, ending on `.jpg`: `zip /path/to/compressed/destination/file.zip /path/to/dir/*.jpg`
> * decompress: `unzip /path/to/compressed/file.zip` or with defined destination `unzip /path/to/compressed/file.zip /path/to/destination/file`
* tar
> * compress with gzip compression: `tar -zcvf /path/to/compressed/file.tgz /path/to/file/to/compress`
> * compress with bzip2 compression: `tar -jcvf /path/to/compressed/file.tbz2 /path/to/file/to/compress`
> * compress all files, for example, ending on `.jpg`: `tar -zcvf /path/to/compressed/file.tar.gz /path/to/dir/*.jpg`
> * decompress through gzip: `tar -zxvf /path/to/compressed/file.tgz`
> * decompress through bzip2: `tar -jxvf /path/to/compressed/file.bz2`

### Using Special Characters in Quotes

Example using `$` special character:
    
    HI='hello'
    echo "Say $HI"
    echo "Say \$HI"
    echo 'Say $HI'
