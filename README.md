# Yandere.sh  
![](https://img.shields.io/badge/code-yandere-blueviolet)  
mass yande.re stealer  

![](https://1.bp.blogspot.com/-fIfEmdtv-GI/XUdOAc8Et4I/AAAAAAAAJmU/InyiZ1lRIHsZ7pGhBnjapfTt5BG_FBVEACEwYBhgL/s1600/Screenshot_56.png)  

```sh
$ cat ${name}.html | grep img | grep -Po 'largeimg" href="\K.*?(?=")' | sed 's/\?.*//' > result/links.txt;
```  
or  
```sh
$ ./yandere.sh #chmod +x if necessary
```  
## License
[MIT](https://choosealicense.com/licenses/mit/)