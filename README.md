Programadores Cariocas | Data Analytics | Senac - Resilia

<a href="https://git.io/typing-svg"><img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=600&size=23&pause=1000&color=F2F71B&random=false&height=93&lines=Projeto+em+grupo+-+Modulo+2;Banco+de+dados+da+Resilia;Moderniza%C3%A7%C3%A3o+do+Processo+de+;Armazenamento+e+Gerenciamento" alt="Typing SVG" /></a> 

## Objetivo :bulb: ![MySQL](https://img.shields.io/badge/mysql-4479A1.svg?style=for-the-badge&logo=mysql&logoColor=white) 
Este projeto visa modernizar o processo de armazenamento e gerenciamento de dados do braço de ensino da Resilia, substituindo as planilhas por um sistema de banco de dados relacional. A seguir, detalharemos as etapas e entregáveis conforme solicitado.

### 1. Representação das Entidades, Atributos e Relacionamentos:
  - 1.1. **Entidade: Facilitador**
      - Atributos: idFacilitador (Chave Primária), nome, disciplina, especialização. <br>
  - 1.2. **Entidade: Módulo**
      - Atributos: idModulo (Chave Primária), numero, data_inicio, data_fim, ementa, idFacilitador (Chave Estrangeira referenciando Facilitador).<br>
  - 1.3. **Entidade: Turma**
      - Atributos: idTurma (Chave Primária), turno, sala, capacidade, semestre, idModulo (Chave Estrangeira referenciando Módulo).<br>
  - 1.4. **Entidade: Aluno**
      - Atributos: idAluno (Chave Primária), nome, data_nascimento, telefone, email, cpf, cep, cidade, estado.<br>
  - 1.5. **Entidade: Matrícula**
      - Atributos: idTurma (Chave Estrangeira referencia Turma), idAluno (Chave Estrangeira referencia Aluno), status_matricula, <br>
  - 1.6. **Entidade: Curso**
      - Atributos: idCurso (Chave Primária), matriz_curricular, duração, idTurma (Chave Estrangeira referencia Turma), idAluno (Chave Estrangeira referencia Aluno).<br>
  - 1.7. **Entidade: Grade Curricular**
      - Atributos: idCurso (Chave Estrangeira referencia Curso), idModulo (Chave Estrangeira referencia Modulo), quantidade.<br>      

### Perguntas basicas do projeto

1. Gerar uma representação das entidades e seus respectivos atributos e relacionamentos;
2. Criar a modelagem do banco de dados;
3. Criar os scripts SQL para criação do banco de dados e das tabelas com seus respectivos
atributos;
4. Criar scripts SQL para inserção dos dados nas tabelas
5. Executar consultas para gerar informações estratégicas para a área de ensino da Resilia.

### Perguntas estratégica do trabalho ?

1: Qual é o número total de alunos matriculados em cada turma?;
![1](https://github.com/eloisemf/resiliaDataM2/assets/113704939/f1de22d3-4cad-419f-8e37-81738037ce4e)


2: Quais são os facilitadores que estão ministrando aulas para um determinado;

3: Quais alunos são da região da sudeste;

4: Quais são os alunos matriculados em determinado módulo de um curso e em qual;

5: Quais são os cursos que um determinado aluno está matriculado incluindo informações;

6: Quais alunos podem ser jovem  aprendiz com 24 anos;

7: qual e a ementa que cada facilitador esta ligado;



