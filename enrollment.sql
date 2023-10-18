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
    nombre text
);

-- Tabla grupo
create table grupo(
    id integer primary key,
    numero integer,
    cupo integer, 
    curso_clave text,
    profesor_nomina text 
);

-- Tabla alumno_grupo
create table alumno_grupo(
    id integer primary key, 
    alumno_matricula text,
    grupo_id integer
);

/*markdown
Para agregar una llave foránea:
*/

/*
ALTER TABLE orders
    ADD CONSTRAINT fk_orders_customers FOREIGN KEY (customer_id) REFERENCES customers (id)
    
*/

ALTER TABLE alumno_grupo
    ADD CONSTRAINT fk_alumno_grupo_alumno FOREIGN KEY (alumno_matricula) REFERENCES alumno(matricula),
    ADD CONSTRAINT fk_grupo_id_grupo FOREIGN KEY (grupo_id) REFERENCES grupo(id);

ALTER TABLE grupo
    ADD CONSTRAINT fk_curso_clave_curso FOREIGN KEY (curso_clave) REFERENCES curso(clave),
    ADD CONSTRAINT fk_profesor_nomina_profesor FOREIGN KEY (profesor_nomina) REFERENCES profesor(nomina);
