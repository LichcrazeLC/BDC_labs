USE master; 

EX 1 Full Back-Up
 '''sql
GO  
BACKUP DATABASE universitatea  
TO DISK = 'D:\Backup_lab11\exercitiul1.Bak'  
WITH FORMAT 
GO  
BACKUP LOG universitatea TO DISK = 'D:\Backup_lab11\exercitiul1.Bak'
'''
EX 2 Differential Backup

GO  
BACKUP DATABASE universitatea  
TO DISK = 'D:\Backup_lab11\exercitiul2.Bak'  
WITH DIFFERENTIAL 
GO  
BACKUP LOG universitatea TO DISK = 'D:\Backup_lab11\exercitiul2.Bak'

EX 3 Log Backup

GO
BACKUP LOG universitatea  
   TO DISK = 'D:\Backup_lab11\exercitiul3.Bak'
GO  

Ex 4 Database Restore

use universitatea_1
RESTORE FILELISTONLY  
   FROM DISK = 'D:\Backup_lab11\exercitiul1.Bak';  
RESTORE DATABASE universitatea1  
FROM DISK = 'D:\Backup_lab11\exercitiul1.Bak'; 

![image](https://user-images.githubusercontent.com/33174692/49730302-a2137e00-fc80-11e8-8d48-95f92c7ae320.png)
