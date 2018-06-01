using System;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using Microsoft.SqlServer.Server;

public partial class UserDefinedFunctions
{
    [Microsoft.SqlServer.Server.SqlFunction]
    public static SqlString TestUDF(string name)
    {
        string result = string.Format("Hello {0}!", name);
        return new SqlString(result);
    }
}
