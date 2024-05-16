create database resiliaData;
use resiliaData;

create table facilitador (
idFacilitador int not null auto_increment primary key,
nome varchar(70) not null,
disciplina varchar(45) not null,
especialização varchar(50) not null
);
    
create table modulo (
idModulo int not null auto_increment primary key,
numero int not null,
data_inicio date not null,
data_fim date not null,
ementa varchar(100) not null,
idFacilitador int not null,
foreign key (idFacilitador) references facilitador(idFacilitador)
    );
    
create table turma (
idTurma int not null auto_increment primary key,
turno varchar(10) not null,
sala varchar(10) not null,
capacidade int not null,
semestre int not null ,
idModulo int not null, 
foreign key (idModulo) references modulo(idModulo)
);

create table curso (
idCurso int not null auto_increment primary key,
nome varchar(70) not null,
matriz_curricular varchar(100) not null,
duração varchar(10) not null ,
idTurma int,
foreign key (idTurma) references turma(idTurma)
);

create table aluno (
idAluno int not null auto_increment primary key,
nome varchar(100) not null,
data_nascimento date not null,
telefone varchar(22),
email varchar(70),
cpf varchar(14) not null,
cep varchar(9) not null,
cidade varchar(45),
estado varchar(45),
idCurso int not null, 
foreign key (idCurso) references Curso(idCurso)
);

create table matricula (
idMatricula int not null auto_increment primary key,
idTurma int,
idAluno int,
status_matricula varchar(10),
foreign key (idTurma) references turma(idTurma),
foreign key (idAluno) references aluno(idAluno)
);


create table grade_curricular (
idGrade_curricular int not null auto_increment primary key,
idCurso int,
idModulo int,
quantidade varchar(45),
foreign key (idCurso) references curso(idCurso),
foreign key (idModulo) references modulo(idModulo)
);