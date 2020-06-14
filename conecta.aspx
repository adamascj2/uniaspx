<script; language="JavaScript" runat="server">
function Page_Load(sender:Object, e:EventArgs) : void {
  
 
 var msg;
 msg = conectar( ); 
 Response.Write("DB MESSAGE="+msg); 
}
 
function conectar(){
 var oConn:System.Data.OleDb.OleDbConnection = new System.Data.OleDb.OleDbConnection(); 
 oConn.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("/data/db1.mdb"); 
 try{ 
  oConn.Open();
  var oCmd:System.Data.OleDb.OleDbCommand  = new System.Data.OleDb.OleDbCommand();
  oCmd = oConn.CreateCommand(); 
  oCmd.Connection = oConn;
   //Inserting the data
  //oCmd.CommandText = "INSERT INTO students (name,country) VALUES('"+ name+ "','" + country + "')";
  //oCmd.ExecuteNonQuery(); 
  return "CONECTADO!" ;
 }
 catch(e:Exception){
  //Write the error, if we have one
  return "Error: "+  e.ToString();
 }
 finally{
  //Having error or not we close the connection, a good pratice.
  oConn.Close();
 }
}
</script> 