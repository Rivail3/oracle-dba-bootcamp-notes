## 🇺🇸 English

These are my notes from the Oracle DBA bootcamp class on instance configuration. The commands and SQL statements below help configure the environment, check instance status, and monitor logs.

---

### 1. Configure environment variables

```bash
. oraenv
```
*Used to set Oracle environment variables.*

---

### 2. Database name

```bash
orcl
```
*`orcl` is the database name used in this setup.*

---

### 3. Path to alert log

```bash
cd $ORACLE_BASE/diag/rdbms/orcl/orcl/trace
```
*This is the path to the alert log file for the database.*

---

### 4. View the end of the alert log file

```bash
tail -f alert_orcl.log
```
*Continuously shows the latest lines from the alert log file.*

---

### 5. Check SMON processes

```bash
ps aux | grep smon
```
*Searches for the SMON process, which handles several Oracle instance management tasks.*

---

### 6. Query instance information

```sql
SELECT INSTANCE_NAME, TO_CHAR(STARTUP_TIME, 'dd/mm/yy hh24:mi:ss') STARTUP_TIME, STATUS FROM V$INSTANCE;
```
*Displays the instance name, startup time, and status.*

---

### 7. Check database state

```sql
SELECT OPEN_MODE FROM V$DATABASE;
```
*Checks the state of the database instance (e.g., READ WRITE, MOUNTED, etc.).*

---

*These notes track my progress in the Oracle DBA bootcamp and serve as a future reference for Oracle instance configuration and monitoring.*

---

## 🇧🇷 Português

Estas são minhas anotações da aula sobre configuração de instância no bootcamp de Oracle DBA. Os comandos e instruções SQL abaixo ajudam a configurar o ambiente, verificar o status da instância e monitorar os logs.

---

### 1. Configurar variáveis de ambiente

```bash
. oraenv
```
*Usado para configurar as variáveis de ambiente do Oracle.*

---

### 2. Nome do banco de dados

```bash
orcl
```
*`orcl` é o nome do banco de dados utilizado nesta configuração.*

---

### 3. Caminho do arquivo de log de alertas

```bash
cd $ORACLE_BASE/diag/rdbms/orcl/orcl/trace
```
*Este é o caminho até o arquivo de log de alertas do banco (`alert log`).*

---

### 4. Visualizar o final do arquivo de log

```bash
tail -f alert_orcl.log
```
*Mostra continuamente as últimas linhas do arquivo de log de alertas do banco.*

---

### 5. Verificar processos SMON

```bash
ps aux | grep smon
```
*Procura pelo processo SMON, responsável por diversas tarefas de gerenciamento da instância Oracle.*

---

### 6. Consultar informações da instância

```sql
SELECT INSTANCE_NAME, TO_CHAR(STARTUP_TIME, 'dd/mm/yy hh24:mi:ss') STARTUP_TIME, STATUS FROM V$INSTANCE;
```
*Exibe o nome da instância, o horário em que foi iniciada e seu status.*

---

### 7. Verificar estado do banco de dados

```sql
SELECT OPEN_MODE FROM V$DATABASE;
```
*Verifica em que estado a instância do banco se encontra (exemplo: READ WRITE, MOUNTED, etc.).*

---

*Essas anotações acompanham minha evolução no bootcamp Oracle DBA e servirão como referência futura para configuração e monitoramento de instâncias Oracle.*
````
