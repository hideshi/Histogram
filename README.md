This is a command line application, which was written in AWK and shows a histogram on your screen.  
The histogram will be composed of a sample source data file.  
  
$ echo "How to use it."  
$ /path/to/histogram.awk /path/to/data/height  
histogram  
standard deviation:6.27148
143:＊  
148:＊＊＊＊  
153:＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊  
158:＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊  
163:＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊  
168:＊＊＊＊＊＊＊＊  
$ echo "NC means Number of Class. You can specify it."  
$ /path/to/histogram.awk -v NC=10 /path/to/data/height   
histogram  
standard deviation:5.92398
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
