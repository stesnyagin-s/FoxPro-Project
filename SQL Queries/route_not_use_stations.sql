SELECT Station.id_st, Station.name;
 FROM station ;
 LEFT  JOIN schedule ;
 ON  Station.id_st = Schedule.id_st AND  Schedule.id_route = ( 1 );
 WHERE schedule.id_route is NULL;
