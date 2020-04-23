if tar cvfz backup.tar.gz documents/*
then
	rm -r documents
else
	echo "Archive operation failed"
fi
