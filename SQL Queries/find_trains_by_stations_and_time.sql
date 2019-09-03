SELECT a.id_train, a.id_route, a.end_time, a.id_st, b.id_train, b.id_route, b.end_time, b.id_st;
 FROM schedule as a, schedule as b;
 WHERE a.id_route = b.id_route;
 AND a.id_st = (2);
 AND b.id_st = (4);
 AND a.id_train = b.id_train;
 AND a.end_time > {^2017/12/25 5:00:00};
 AND a.end_time < {^2017/12/25 6:00:00};