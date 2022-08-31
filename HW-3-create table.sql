create table if not exists Style (
	id serial primary key not null,
	name varchar(40) not null
);
 create table if not exists Singer (
	id serial primary key not null,
	name varchar(100) not null
);
 create table if not exists Album (
	id serial primary key not null,
	name varchar(40) not null,
	year integer not null
);
 create table if not exists Track (
	id serial primary key not null,
	album_id integer references album(id) not null
	name varchar(40) not null,
	duration time not null,
);
create table if not exists Collection (
	id serial primary key not null,
	year integer not null,
	name varchar(40) not null
);
create table if not exists StyleSinger (
	id serial primary key not null
	singer_id integer references Singer(id) not null,
	style_id integer references Style(id) not null,
	constraint StyleSinger_stile_id_singer_id_pk primary key (style_id, singer_id)
);
create table if not exists AlbumSinger (
	id serial primary key not null
	singer_id integer references singer(id) not null,
	album_id integer references album(id) not null,
	constraint AlbumSinger_singer_id_album_id_pk primary key (album_id, singer_id)
);
create table if not exists TrackCollection (
	id serial primary key not null
	collection_id integer references collection(id) not null,
	track_id integer references track(id) not null,
	constraint TrackCollection_track_id_collection_id_pk primary key (collection_id, track_id)
)