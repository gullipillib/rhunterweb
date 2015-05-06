<%@ Page Language="C#"  Debug="true"%>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.OleDb" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Configuration" %>
<!DOCTYPE html>

<script runat="server">


protected void Button1_Click(object sender, EventArgs e)
{
    //Insert User into appuser,loggeduser,ordercounter,treasureprize;
    SqlDataSource1.SelectCommand = "SELECT * FROM appuserdetails WHERE (uname = '" + TextBox1.Text + "')";

    DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
    DataTable dt = new DataTable();
    dt = dv.ToTable();
    //DataTable dtr = dt;
    //DataRow[] uniname = dt.Select("uname");
    //username = dt.Rows[0].Field<string>("uname"); usethis to get field value
    //Label3.Text = dt.Rows[0][0].ToString();
    if (dt.Rows.Count == 0)
    {
        //Insert User into appuser,loggeduser,ordercounter,winners;
        //SqlDataSource1.SelectCommand = "SELECT * FROM appuserdetails";
        //SqlDataSource1.InsertParameters["uname"].DefaultValue = Hiddenfield1;
        //SqlDataSource1.InsertParameters["uloggedin"].DefaultValue = "no";
        //SqlDataSource1.InsertParameters["winner"].DefaultValue = "no";
        //SqlDataSource1.InsertParameters["wintimes"].DefaultValue = "0";
        //SqlDataSource1.InsertParameters["paid"].DefaultValue = "no";
        //SqlDataSource1.InsertParameters["amount"].DefaultValue = "0";
        //SqlDataSource1.InsertParameters["currenttspot"].DefaultValue = "";

        SqlDataSource1.InsertCommand = "INSERT INTO appuserdetails(uname, uloggedin, winner, wintimes, paid, amount, currenttspot, device, logindate, logintime, levels) VALUES ('" + TextBox1.Text + "', 'no', 'no', '0', '" + TextBox2.Text + "', 'no', '1', 'web'," + "'" + System.DateTime.Now.Date + "'," + "'" + System.DateTime.Now.TimeOfDay + "'," + "'1')";
        SqlDataSource1.Insert();
        Session["loggeduser"] = TextBox1.Text;
        Response.Redirect("https://thunterweb.apphb.com/index1.aspx");
	
    }
    else if (dt.Rows.Count != 0 && TextBox2.Text == dt.Rows[0].Field<string>("paid"))
    {
        Session["loggeduser"] = TextBox1.Text;
        Response.Redirect("https://thunterweb.apphb.com/index1.aspx");
    }
}
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Treasure Hunter Game</title>
   
</head>
<body style="background-color:black;">
    
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" ForeColor="White" style="z-index: 1; left: 266px; top: 258px; position: absolute" Text="Playername"></asp:Label>
        <asp:Label ID="Label2" runat="server" ForeColor="White" style="z-index: 1; left: 268px; top: 303px; position: absolute; width: 83px;" Text="Password"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" ForeColor="#003300" style="z-index: 1; left: 381px; top: 258px; position: absolute; width: 182px"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" ForeColor="#003300" style="z-index: 1; left: 380px; top: 304px; position: absolute; width: 182px" TextMode="Password"></asp:TextBox>
        
        <asp:Button ID="Button1" runat="server" style="z-index: 1; left: 405px; top: 370px; position: absolute; height: 26px; width: 140px" Text="ENTER GAME" ForeColor="Blue" OnClick="Button1_Click" />
      
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:c9ddedcf-4582-4aa0-b614-a4710054b560ConnectionString %>" SelectCommand="SELECT * FROM appuserdetails" InsertCommand="INSERT INTO loggedusers(luname, luid, 

luposition, luimg, luspriteimg, lucrisboos, luloggedin, lutspots, lulogintimes, luinvites) Values (@luname, @luid, 

@luposition, @luimg, @luspriteimg, @lucrisboos, @luloggedin, @lutspots, @lulogintimes, @luinvites)" 

UpdateCommand="UPDATE appuserdetails SET @uloggedin='yes'">
            <InsertParameters>
                <asp:Parameter Name="luname" />
                <asp:Parameter Name="luid" />
                <asp:Parameter Name="luposition" />
                <asp:Parameter Name="luimg" />
                <asp:Parameter Name="luspriteimg" />
                <asp:Parameter Name="lucrisboos" />
                <asp:Parameter Name="luloggedin" />
                <asp:Parameter Name="lutspots" />
                <asp:Parameter Name="lulogintimes" />
                <asp:Parameter Name="luinvites" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="uloggedin" />
            </UpdateParameters>
        </asp:SqlDataSource>
        
        <img alt="" src="images/150.jpg" style="position: absolute; z-index: 1; width: 25%; height: 172px; top: 53px; left: 28px;" />
        
    
    </form>
    
        
        
        
</body>
