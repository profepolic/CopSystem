#!/bin/bash
# Script para backup do SPED   
# Serial 2009111101

# --------------------------------------------------------------------
# Variaveis

# Definir o diretorio onde será copiado o backup
# O diretorio precisa ter permissão de gravação para o root e para
# o grupo postgres

DIRBKP=/backup
LOGFILE=/backup/Backup-sped.log

# --------------------------------------------------------------------
# --------------------------------------------------------------------

# Inicio do script
echo "(`date -d now +"%d/%m/%Y %H:%M:%S"`): Inicio backup" | tee -a $LOGFILE

# Para serviço do Tomcat 
echo "(`date -d now +"%d/%m/%Y %H:%M:%S"`): Para serviço do Tomcat" | tee -a $LOGFILE
/etc/init.d/tomcat stop 2>&1 | tee -a $LOGFILE

# Gera backup da Aplicacao
echo "(`date -d now +"%d/%m/%Y %H:%M:%S"`): Gera backup da Aplicacao" | tee -a $LOGFILE
tar zcpf $DIRBKP/backup_webapps.tar.gz /root/backup_sped.sh /usr/local/tomcat/webapps/sped 2>&1 | tee -a $LOGFILE 

# Gera backup do LDAP
echo "(`date -d now +"%d/%m/%Y %H:%M:%S"`): Gera backup do LDAP" | tee -a $LOGFILE
slapcat -l $DIRBKP/backup_ldap.ldif 2>&1 | tee -a $LOGFILE

# Gera backup do banco PostgreSQL
echo "(`date -d now +"%d/%m/%Y %H:%M:%S"`): Gera backup do banco PostgreSQL" | tee -a $LOGFILE
su postgres -c "pg_dump spedDB > $DIRBKP/backup_postgres.dump" 2>&1 | tee -a $LOGFILE

# Inicia serviço do Tomcat 
echo "(`date -d now +"%d/%m/%Y %H:%M:%S"`): Inicia serviço do Tomcat" | tee -a $LOGFILE
/etc/init.d/tomcat start 2>&1 | tee -a $LOGFILE

# Copia backup para servidor Nagios
#echo "(`date -d now +"%d/%m/%Y %H:%M:%S"`): Copia backup para servidor Nagios" | tee -a $LOGFILE
#scp $DIRBKP/backup_* ip_da_maquina_remota:/diretorio 2>&1 | tee -a $LOGFILE

echo "(`date -d now +"%d/%m/%Y %H:%M:%S"`): Backup completo" | tee -a $LOGFILE
echo "" | tee -a $LOGFILE

exit 0
