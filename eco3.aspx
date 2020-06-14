<html>
<form runat= "server">
<asp:Label id = "saida" runat="server"/>
</form>
<script language="C#" runat="server">
 public void Page_Load(Object sender, EventArgs ea){
  saida.Text = "Oi " + this.Request.Params["mensagemenviadaC"];
 }
</script>
</html>