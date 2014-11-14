This is a command line application, which was written in AWK and shows a histogram on your screen.  
The histogram will be composed of a sample source data.  
  
$ echo "How to use it."  
$ /path/to/histogram.awk /path/to/data/height  
histogram  
143:＊  
148:＊＊＊＊  
153:＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊  
158:＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊  
163:＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊  
168:＊＊＊＊＊＊＊＊  
$ echo "NC means Number of Class. You can specify it."  
$ /path/to/histogram.awk -v NC=10 /path/to/data/height   
histogram  
143:＊  
146:＊＊  
149:＊＊  
152:＊＊＊＊＊＊＊＊  
155:＊＊＊＊＊＊＊＊＊＊＊＊＊  
158:＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊  
161:＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊  
164:＊＊＊＊＊＊＊＊＊＊＊＊  
167:＊＊＊＊＊  
170:＊＊＊  
$  
