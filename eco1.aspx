<%
var mensagemrecebidaS = Request.Params("mensagemenviadaC");
var mensagemenviadaS = processamento(mensagemrecebidaS);
Response.Write(mensagemenviadaS + "$"); 
%>

<script language="C#" runat="server">
void processamento(mS){
 public String finalprocessado;
//Numa variavel "finalprocessado", colocar o resultado do processamento
 
 try {
 //Aqui colocar o processamento da mensagemrecebidaS

  finalprocessado = "Oi," + mS + "! Essa mensagem veio do servidor.";
  return finalprocessado;
 } 
 
 catch(e:Exception) {
  //mensagemenviadaS informará erro, se houver
  return "Error: "+  e.ToString();
 }
 finally{
  //Havendo erro ou não é bom fechar o que foi aberto(conexão, db e tabelas)
 }
}
</script>