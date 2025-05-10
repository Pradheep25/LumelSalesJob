BEGIN TRY
    BEGIN TRANSACTION;
    
    DECLARE @CSVFilePath NVARCHAR(MAX) = N'D:\Dotnet\Lumel\lumelCSV.csv';
    DECLARE @SQL NVARCHAR(MAX);

    SET @SQL = N'
    BULK INSERT SalesData_Staging
    FROM ''' + @CSVFilePath + N'''
    WITH (
        FIRSTROW = 2,
        FIELDTERMINATOR = '','',
        ROWTERMINATOR = ''\n'',
        CODEPAGE = ''65001''
    );';

    EXEC sp_executesql @SQL;
    COMMIT TRANSACTION;
END TRY
BEGIN CATCH
    IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
    PRINT 'Error: ' + ERROR_MESSAGE();
END CATCH;
