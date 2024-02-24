for dir in myrepo3 myrepo4 myrepo5 myrepo6 myrepo7 myrepo8; do
	echo "copying to $dir"
	cp myrepo2/* "$dir"
done

