select.now();


/*markdown
### BASE DE DATOS ENROLLMENT
*/

-- Tabla de alumno
create table alumno(
    matricula text primary key,
    nombre text,
    apellido text
);

-- Tabla profesor
create table profesor(
    nomina text primary key,
    nombre text,
    apellido text
);

-- Tabla curso
create table curso(
    clave text primary key,
    nombre text,
);

-- Tabla grupo
create table grupo(
    id integer primary key,
    numero integer,
    cupo integer, 
    curso_clave text foreign key,
    profesor_nomina text foreign key
);

-- Tabla alumno_grupo
create table alumno_grupo(
    id integer primary key, 
    alumno_matricula text foreign key,
    grupo_id integer foreign key, 
);