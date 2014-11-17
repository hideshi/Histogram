#!/usr/local/bin/gawk -f
{
	sample[FNR] = $0;
}

END {
	asort(sample);

	min = sample[1];
	#print "min:" min;

	max = sample[FNR];
	#print "max:" max;

	if(NC == "") {
		NC = 6;
	}

	interval = int((max - min) / NC);
	if(interval % 2 == 0) {
		interval++;
	}
	#print "interval:" interval;

	for(i = 0; i < NC; i++) {
		if(i == 0) {
			class[i] = class_value = min - (interval / 2 + 0.5);
		} else {
			class[i] = class_value = class_value + interval;
		}
		#print "class " i ":" class[i];
	}

	for(i = 0; i < NC; i++) {
		n = i + 1;
		for(j = 1; j <= FNR; j++) {
			if(i != (NC - 1) && class[i] <= sample[j] && sample[j] < class[n]) {
				frequency[i]++;
			} else if(i == (NC - 1) && class[i] <= sample[j]) {
				frequency[i]++;
			}
		}
		sum = sum + (class[i] * frequency[i]);
	}
	#print "sum:" sum;

	average = sum / FNR;
	#print "average:" average;

	print "histogram";

	for(i = 0; i < NC; i++) {
		tmp = tmp + ((class[i] + (interval / 2 + 0.5) - average) ^ 2) * frequency[i];
	}
	print "standard deviation:" sqrt(tmp / (FNR - 1));

	for(i = 0; i < NC; i++) {
		#print "frequency " i ":" frequency[i];
		asterisk = "";
		for(j = 1; j <= frequency[i]; j++) {
			asterisk = asterisk "*";
		}
		print (class[i] + (interval / 2 + 0.5))":"asterisk;
	}
}
