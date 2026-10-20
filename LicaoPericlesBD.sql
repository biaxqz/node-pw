create database etec_abdias;
use etec_abdias;
create table alunos(
 rm  varchar (10) primary key,
 nome varchar(100)
 );
 
  insert into alunos (rm, nome) values ("0101", "Francisco");
  insert into alunos (rm, nome) values ("0102", "Ana");
  insert into alunos (rm, nome) values ("0103", "Jose");
  select *from alunos;
  
  create table cursos( 
  IdCurso int primary key, 
  nome varchar(30)
  );
  
  insert into cursos (IdCurso, nome)values (1,'ds'), (2,'adm'), (3, 'rh');
  select *from cursos;
  
   create table curso_alunos(
   idRegistro int primary key,
   idCurso int,
   foreign key (idCurso) references cursos (idCurso),
   foreign key (rm) references alunos (rm)
   );
   
   insert into curso_alunos  values (1, 1, "0101"), (2, 2, " 0102");
   select*from cursos_alunos;
   select ca.idCurso, c.nome nome_curso, ca.rm, a.nome nome_aluno
   from cursos_alunos ca 
   inner join cursos c 
   on ca.idCurso = c.idCurso
   inner join alunos a on ca.rm = a.rm;
   
   
   
   
   
   
   
   
   