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
   
       ## Modelo do Banco de Dados
        ![resilia-data-triggers (1)](https://github.com/eloisemf/resiliaDataM2/assets/113704939/351acc5f-3fa9-444d-a7bb-69eb2b27815d)


### Consultas basicas do projeto

- 1. Selecionar a quantidade total de estudantes cadastrados no banco;
- 2. Selecionar quais pessoas facilitadoras atuam em mais de uma turma;
- 3. Criar uma view que selecione a porcentagem de estudantes com status de evasão agrupados por turma;
- 4. Criar um trigger para ser disparado quando o atributo status de um estudante for atualizado e inserir um novo dado em uma tabela de log.

<details> 
  
### Perguntas estratégica do trabalho?

1: Qual é o número total de alunos matriculados em cada turma?;

![1](https://github.com/eloisemf/resiliaDataM2/assets/113704939/f1de22d3-4cad-419f-8e37-81738037ce4e)


2: Quais são os facilitadores que estão ministrando aulas para um determinado modulo de determinado curso;

 ![2](https://github.com/eloisemf/resiliaDataM2/assets/113704939/6038306e-dc5a-4222-b601-1a1515586a46)


3: Quais alunos são da região da sudeste;

![3](https://github.com/eloisemf/resiliaDataM2/assets/113704939/589f7945-7b50-4626-950b-c1ecf0267675)


4: Quais os alunos que estão cadastrados em uma ou mais grade curricular;

![4](https://github.com/eloisemf/resiliaDataM2/assets/113704939/f900d194-1127-4a52-bd23-f914672fff80)


5: Quantos alunos podem ser jovem  aprendiz;

![6](https://github.com/eloisemf/resiliaDataM2/assets/113704939/cc8d3411-2822-450b-a532-d9127a2468a7)


6: qual e a ementa que cada facilitador esta ligado;

![7](https://github.com/eloisemf/resiliaDataM2/assets/113704939/55229813-f261-407b-a987-9d91da5ab76b)





















  
</details>

