CREATE TABLE "usuario" (
  "id_usurio" serial PRIMARY KEY,
  "user" varchar,
  "password" varchar,
  "tokken" varchar
);

CREATE TABLE "sesion" (
  "id_sesion" serial PRIMARY KEY,
  "id_usuario" integer,
  "sesion" bool,
  "id_fecha" integer
);

CREATE TABLE "aplicaciones" (
  "id_aplicaciones" serial PRIMARY KEY,
  "aplicacion" varchar,
  "id_categoria" integer
);

CREATE TABLE "categoria" (
  "id_categoria" serial PRIMARY KEY,
  "categoria" varchar
);

CREATE TABLE "configuraciones" (
  "id_configuraciones" serial PRIMARY KEY,
  "configuraciones" varchar
);

CREATE TABLE "pasos" (
  "id_paso" serial PRIMARY KEY,
  "pasos" integer
);

CREATE TABLE "indicaciones" (
  "id_indicaciones" serial PRIMARY KEY,
  "id_usuario" integer,
  "id_aplicaciones" integer,
  "id_pasos" integer,
  "id_configuracion" integer,
  "indicaciones" varchar,
  "img" varchar,
  "id_fecha" integer
);

CREATE TABLE "comentario" (
  "id_comentario" serial PRIMARY KEY,
  "comentario" varchar,
  "id_indicaciones" integer,
  "id_usuario" integer
);

CREATE TABLE "crud" (
  "id_crud" serial PRIMARY KEY,
  "crud" varchar
);

CREATE TABLE "notificacion" (
  "id_notificacion" serial PRIMARY KEY,
  "id_indicaciones" integer,
  "id_crud" integer,
  "id_usuario" integer
);

CREATE TABLE "equipo" (
  "id_equipo" serial PRIMARY KEY,
  "nombre" varchar,
  "serial" varchar,
  "direccionIp" varchar,
  "operativo" bool,
  "descripcion" varchar
);

CREATE TABLE "contadores" (
  "id_contadores" serial PRIMARY KEY,
  "cantidad_impresion" integer,
  "id_equipo" integer,
  "id_fecha" integer,
  "id_usuario" integer
);

CREATE TABLE "empleados" (
  "id_empleado" serial PRIMARY KEY,
  "nombre" varchar,
  "id_usuario" integer
);

CREATE TABLE "archivos" (
  "id_archivos" serial PRIMARY KEY,
  "nombre_archivos" varchar,
  "ruta_archivos" varchar,
  "descripcion" varchar,
  "id_fecha" integer,
  "id_empleado" integer
);

CREATE TABLE "fechas" (
  "id_fechas" serial PRIMARY KEY,
  "fecha" date
);

CREATE TABLE "plantilla" (
  "id_plantilla" serial PRIMARY KEY,
  "plantilla" varchar,
  "id_usuario" integer
);

CREATE TABLE "cursos" (
  "id_curso" serial PRIMARY KEY,
  "curso" varchar,
  "id_tipo_curso" integer,
  "id_usuario" integer,
  "id_modulo" integer
);

CREATE TABLE "tipo_curso" (
  "id_tipo_curso" serial PRIMARY KEY,
  "tipo_curso" varchar
);

CREATE TABLE "modulo" (
  "id_modulo" serial PRIMARY KEY,
  "id_pasos" integer,
  "descripcion" varchar,
  "img" varchar,
  "id_tipo_curso" integer
);

CREATE TABLE "finalizacion" (
  "id_finalizacion" serial PRIMARY KEY,
  "id_curso" integer,
  "id_modulo" integer,
  "id_usuario" integer,
  "finalizacion" varchar
);

ALTER TABLE "sesion" ADD FOREIGN KEY ("id_usuario") REFERENCES "usuario" ("id_usurio");

ALTER TABLE "sesion" ADD FOREIGN KEY ("id_fecha") REFERENCES "fechas" ("id_fechas");

ALTER TABLE "aplicaciones" ADD FOREIGN KEY ("id_categoria") REFERENCES "categoria" ("id_categoria");

ALTER TABLE "indicaciones" ADD FOREIGN KEY ("id_usuario") REFERENCES "usuario" ("id_usurio");

ALTER TABLE "indicaciones" ADD FOREIGN KEY ("id_aplicaciones") REFERENCES "aplicaciones" ("id_aplicaciones");

ALTER TABLE "indicaciones" ADD FOREIGN KEY ("id_pasos") REFERENCES "pasos" ("id_paso");

ALTER TABLE "indicaciones" ADD FOREIGN KEY ("id_configuracion") REFERENCES "configuraciones" ("id_configuraciones");

ALTER TABLE "indicaciones" ADD FOREIGN KEY ("id_fecha") REFERENCES "fechas" ("id_fechas");

ALTER TABLE "comentario" ADD FOREIGN KEY ("id_indicaciones") REFERENCES "indicaciones" ("id_indicaciones");

ALTER TABLE "comentario" ADD FOREIGN KEY ("id_usuario") REFERENCES "usuario" ("id_usurio");

ALTER TABLE "notificacion" ADD FOREIGN KEY ("id_indicaciones") REFERENCES "indicaciones" ("id_indicaciones");

ALTER TABLE "notificacion" ADD FOREIGN KEY ("id_crud") REFERENCES "crud" ("id_crud");

ALTER TABLE "notificacion" ADD FOREIGN KEY ("id_usuario") REFERENCES "usuario" ("id_usurio");

ALTER TABLE "contadores" ADD FOREIGN KEY ("id_equipo") REFERENCES "equipo" ("id_equipo");

ALTER TABLE "contadores" ADD FOREIGN KEY ("id_fecha") REFERENCES "fechas" ("id_fechas");

ALTER TABLE "contadores" ADD FOREIGN KEY ("id_usuario") REFERENCES "usuario" ("id_usurio");

ALTER TABLE "empleados" ADD FOREIGN KEY ("id_usuario") REFERENCES "usuario" ("id_usurio");

ALTER TABLE "archivos" ADD FOREIGN KEY ("id_empleado") REFERENCES "empleados" ("id_empleado");

ALTER TABLE "plantilla" ADD FOREIGN KEY ("id_usuario") REFERENCES "usuario" ("id_usurio");

ALTER TABLE "cursos" ADD FOREIGN KEY ("id_tipo_curso") REFERENCES "tipo_curso" ("id_tipo_curso");

ALTER TABLE "cursos" ADD FOREIGN KEY ("id_usuario") REFERENCES "usuario" ("id_usurio");

ALTER TABLE "cursos" ADD FOREIGN KEY ("id_modulo") REFERENCES "modulo" ("id_modulo");

ALTER TABLE "modulo" ADD FOREIGN KEY ("id_pasos") REFERENCES "pasos" ("id_paso");

ALTER TABLE "modulo" ADD FOREIGN KEY ("id_tipo_curso") REFERENCES "tipo_curso" ("id_tipo_curso");

ALTER TABLE "finalizacion" ADD FOREIGN KEY ("id_curso") REFERENCES "cursos" ("id_curso");

ALTER TABLE "finalizacion" ADD FOREIGN KEY ("id_modulo") REFERENCES "modulo" ("id_modulo");

ALTER TABLE "finalizacion" ADD FOREIGN KEY ("id_usuario") REFERENCES "usuario" ("id_usurio");
