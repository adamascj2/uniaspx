<html>
<form runat= "server">
<asp:Label id = "saida" runat="server"/>
</form>
<script language="C#" runat="server">
 public void Page_Load(Object sender, EventArgs ea){
  string msg;
  msg = conectar();
  saida.Text =   msg ;
 }

 string conectar(){



  System.Data.OleDb.OleDbConnection oConn = new System.Data.OleDb.OleDbConnection(); 
 oConn.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("/data/db1.mdb"); 
 try{ 
  oConn.Open();
     System.Data.OleDb.OleDbCommand  oCmd = new System.Data.OleDb.OleDbCommand();
  oCmd = oConn.CreateCommand(); 
  oCmd.Connection = oConn;
   //Inserting the data
   oCmd.CommandText = "INSERT INTO jogadores (nome,pontos) VALUES('"+ "Hilda"+ "','" + "2000" + "')";
   oCmd.ExecuteNonQuery(); 
  return "INSERIDO!" ;
 }
 catch( Exception e){
  //Write the error, if we have one
  return "Error: "+  e.ToString();
 }
 finally{
  //Having error or not we close the connection, a good pratice.
  oConn.Close();
 }
}

</script>
</html>