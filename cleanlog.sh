HTML_DIR=/eos/cms/store/unified/www/
LOCAL_DIR=/data/unified/www/
CACHE_DIR=/data/unified-cache/

echo "cleaning .log files in local dir"
for each in `find $LOCAL_DIR/logs/ -name "*.log"` ; do
    age=$((($(date +%s)-$(date +%s -r $each))/86400))
    if [ $age -gt 15 ] ; then
	echo remove $each
	rm -f $each
    fi
done

echo "cleaning .json files in local dir"
for each in `find $LOCAL_DIR/logs/ -name "*.json"` ; do
    age=$((($(date +%s)-$(date +%s -r $each))/86400))
    if [ $age -gt 15 ] ; then
	echo remove $each
	rm -f $each
    fi
done

echo "cleaning files in cache dir"
for each in `ls $CACHE_DIR/*` ; do
    age=$((($(date +%s)-$(date +%s -r $each))/86400))
    if [ $age -gt 15 ] ; then
	echo remove $each
	rm -f $each
    fi
done


echo "cleaning .log files in html dir"
#for each in `ls $HTML_DIR/logs/*/*.log` ; do
for each in `find $HTML_DIR/logs/ -name "*.log"` ; do
    age=$((($(date +%s)-$(date +%s -r $each))/86400))
    if [ $age -gt 15 ] ; then
	echo remove $each
	rm -f $each
    fi
done

echo "cleaning .json files in html dir"
#for each in `ls $HTML_DIR/logs/*/*.json` ; do
for each in `find $HTML_DIR/logs/ -name "*.json"` ; do
    age=$((($(date +%s)-$(date +%s -r $each))/86400))
    if [ $age -gt 15 ] ; then
	echo remove $each
	rm -f $each
    fi
done

