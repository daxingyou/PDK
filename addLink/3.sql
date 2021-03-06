/****** Object:  LinkedServer [QPProxyDBLink]    Script Date: 03/31/2016 03:38:53 ******/
IF  EXISTS (SELECT srv.name FROM sys.servers srv WHERE srv.server_id != 0 AND srv.name = N'QPProxyDBLink')EXEC master.dbo.sp_dropserver @server=N'QPProxyDBLink', @droplogins='droplogins'
GO

/****** Object:  LinkedServer [QPProxyDBLink]    Script Date: 03/31/2016 03:38:53 ******/
EXEC master.dbo.sp_addlinkedserver @server = N'QPProxyDBLink', @srvproduct=N'QPProxyDBLink', @provider=N'SQLNCLI', @datasrc=N'(local)', @catalog=N'QPProxyDB'
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'QPProxyDBLink',@useself=N'True',@locallogin=NULL,@rmtuser=NULL,@rmtpassword=NULL

GO

EXEC master.dbo.sp_serveroption @server=N'QPProxyDBLink', @optname=N'collation compatible', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'QPProxyDBLink', @optname=N'data access', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'QPProxyDBLink', @optname=N'dist', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'QPProxyDBLink', @optname=N'pub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'QPProxyDBLink', @optname=N'rpc', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'QPProxyDBLink', @optname=N'rpc out', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'QPProxyDBLink', @optname=N'sub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'QPProxyDBLink', @optname=N'connect timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'QPProxyDBLink', @optname=N'collation name', @optvalue=null
GO

EXEC master.dbo.sp_serveroption @server=N'QPProxyDBLink', @optname=N'lazy schema validation', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'QPProxyDBLink', @optname=N'query timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'QPProxyDBLink', @optname=N'use remote collation', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'QPProxyDBLink', @optname=N'remote proc transaction promotion', @optvalue=N'true'
GO


