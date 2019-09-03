SELECT Train.capacity, Train.id_train, Train_c.id_train, Train_c.capacity;
	FROM train;
	INNER JOIN schedule!train Train_c ;
	ON  Train.capacity = Train_c.capacity;
	AND  Train.id_train <> Train_c.id_train;
	AND Train.id_train > Train_c.id_train