<%@ Page Language = "C#" AutoEventWireup = "true" %>

<!DOCTYPE html>
<script runat="server">

	HttpCookie SpotsOwned = new HttpCookie("SpotsOwned");
	HttpCookie SpotsCollected = new HttpCookie("SpotsCollected");
	HttpCookie CoinsCollected = new HttpCookie("CoinsCollected");
	HttpCookie Levels = new HttpCookie("Levels");


	protected void Page_Load(object sender, EventArgs e)
	{
		

		if (Page.IsPostBack == false)
		{

			
			HttpCookie SpotsOwnedCookie = Request.Cookies.Get("SpotsOwned");
			HttpCookie SpotsCollectedCookie = Request.Cookies.Get("SpotsCollected");
			HttpCookie CoinsCollectedCookie = Request.Cookies.Get("CoinsCollected");
			HttpCookie LevelsCookie = Request.Cookies.Get("Levels");

			TextBox5.Text = SpotsOwnedCookie["SpotsOwned"].ToString();
			TextBox7.Text = SpotsCollectedCookie["SpotsCollected"].ToString();
			TextBox9.Text = CoinsCollectedCookie["CoinsCollected"].ToString();
			TextBox11.Text = LevelsCookie["Levels"].ToString();

			if (TextBox5.Text == "0")
			{ 
			SpotsOwned.Values.Add("SpotsOwned", "0");
			SpotsOwned.Expires = DateTime.Now.AddDays(365); 
			HttpContext.Current.Response.AppendCookie(SpotsOwned);
			}


			if (TextBox7.Text == "0")
			{
				SpotsCollected.Values.Add("SpotsCollected", "0");
				SpotsCollected.Expires = DateTime.Now.AddDays(365);
				HttpContext.Current.Response.AppendCookie(SpotsCollected);
			}

			if (TextBox9.Text == "0")
			{
				CoinsCollected.Values.Add("CoinsCollected", "0");
				CoinsCollected.Expires = DateTime.Now.AddDays(365);
				HttpContext.Current.Response.AppendCookie(CoinsCollected);
			}

			if (TextBox11.Text == "0")
			{
				Levels.Values.Add("Levels", "0");
				Levels.Expires = DateTime.Now.AddDays(365);
				HttpContext.Current.Response.AppendCookie(Levels);

			}
		}
		
	}

	protected void ctrl1_Click(object sender, ImageClickEventArgs e)
	{
		CoinsCollected.Values.Add("CoinsCollected", Convert.ToString(Convert.ToInt32(TextBox9.Text) + 1));
		HttpContext.Current.Response.AppendCookie(CoinsCollected);
		
		HttpCookie CoinsCollectedCookie = Request.Cookies.Get("CoinsCollected");
		TextBox9.Text = CoinsCollectedCookie["CoinsCollected"].ToString();
		
	}

	protected void ctrl2_Click(object sender, ImageClickEventArgs e)
	{
		CoinsCollected.Values.Add("CoinsCollected", Convert.ToString(Convert.ToInt32(TextBox9.Text) + 1));
		HttpContext.Current.Response.AppendCookie(CoinsCollected);
		HttpCookie CoinsCollectedCookie = Request.Cookies.Get("CoinsCollected");
		TextBox9.Text = CoinsCollectedCookie["CoinsCollected"].ToString();
		
	}

	protected void ctrl3_Click(object sender, ImageClickEventArgs e)
	{
		CoinsCollected.Values.Add("CoinsCollected", Convert.ToString(Convert.ToInt32(TextBox9.Text) + 1));
		HttpContext.Current.Response.AppendCookie(CoinsCollected);
		HttpCookie CoinsCollectedCookie = Request.Cookies.Get("CoinsCollected");
		TextBox9.Text = CoinsCollectedCookie["CoinsCollected"].ToString();
		
	}

	protected void ctrl4_Click(object sender, ImageClickEventArgs e)
	{
		CoinsCollected.Values.Add("CoinsCollected", Convert.ToString(Convert.ToInt32(TextBox9.Text) + 1));
		HttpContext.Current.Response.AppendCookie(CoinsCollected);
		HttpCookie CoinsCollectedCookie = Request.Cookies.Get("CoinsCollected");
		TextBox9.Text = CoinsCollectedCookie["CoinsCollected"].ToString();
		
	}

	protected void ctrl5_Click(object sender, ImageClickEventArgs e)
	{
		CoinsCollected.Values.Add("CoinsCollected", Convert.ToString(Convert.ToInt32(TextBox9.Text) + 1));
		HttpContext.Current.Response.AppendCookie(CoinsCollected);
		HttpCookie CoinsCollectedCookie = Request.Cookies.Get("CoinsCollected");
		TextBox9.Text = CoinsCollectedCookie["CoinsCollected"].ToString();
		
	}

	protected void Img1_Click(object sender, ImageClickEventArgs e)
	{
		CoinsCollected.Values.Add("CoinsCollected", Convert.ToString(Convert.ToInt32(TextBox9.Text) + 1));
		HttpContext.Current.Response.AppendCookie(CoinsCollected);
		HttpCookie CoinsCollectedCookie = Request.Cookies.Get("CoinsCollected");
		TextBox9.Text = CoinsCollectedCookie["CoinsCollected"].ToString();
		
	}

	protected void Img2_Click(object sender, ImageClickEventArgs e)
	{
		CoinsCollected.Values.Add("CoinsCollected", Convert.ToString(Convert.ToInt32(TextBox9.Text) + 1));
		HttpContext.Current.Response.AppendCookie(CoinsCollected);
		HttpCookie CoinsCollectedCookie = Request.Cookies.Get("CoinsCollected");
		TextBox9.Text = CoinsCollectedCookie["CoinsCollected"].ToString();
		
	}

	protected void Img3_Click(object sender, ImageClickEventArgs e)
	{
		CoinsCollected.Values.Add("CoinsCollected", Convert.ToString(Convert.ToInt32(TextBox9.Text) + 1));
		HttpContext.Current.Response.AppendCookie(CoinsCollected);
		HttpCookie CoinsCollectedCookie = Request.Cookies.Get("CoinsCollected");
		TextBox9.Text = CoinsCollectedCookie["CoinsCollected"].ToString();
		
	}

	protected void Img4_Click(object sender, ImageClickEventArgs e)
	{
		CoinsCollected.Values.Add("CoinsCollected", Convert.ToString(Convert.ToInt32(TextBox9.Text) + 1));
		HttpContext.Current.Response.AppendCookie(CoinsCollected);
		HttpCookie CoinsCollectedCookie = Request.Cookies.Get("CoinsCollected");
		TextBox9.Text = CoinsCollectedCookie["CoinsCollected"].ToString();
		
	}

	protected void Img5_Click(object sender, ImageClickEventArgs e)
	{
		CoinsCollected.Values.Add("CoinsCollected", Convert.ToString(Convert.ToInt32(TextBox9.Text) + 1));
		HttpContext.Current.Response.AppendCookie(CoinsCollected);
		HttpCookie CoinsCollectedCookie = Request.Cookies.Get("CoinsCollected");
		TextBox9.Text = CoinsCollectedCookie["CoinsCollected"].ToString();
		
	}
</script>




<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title> Hunter Game</title>
</head>
<body style="height: 556px; background-color: #000000; width: 965px; overflow: hidden;">

<style type="text/css">
        .twoto3d
        {
            width: 100px;
            height: 100px;
            position: relative;
            animation: mymove 0.05s infinite;
            -webkit-animation: mymove 0.25s infinite;
            top: 0px;
            left: 0px;
        }

        @keyframes mymove
        {
            from
            {
                left: 1px;
            }

            to
            {
                left: 2px;
            }
        }

        @-webkit-keyframes mymove /* Safari and Chrome */
        {
            from
            {
                left: 1px;
            }

            to
            {
                left: 2px;
            }
        }

        .zoom
        {
            zoom: 1;
        }

        .perspective3d
        {
            perspective: 300px;
            -webkit-perspective: 300px; /* Safari and Chrome */
            perspective-origin: 40px 20px;
            -webkit-perspective-origin: 40px 20px; /* Safari and Chrome */
            backface-visibility: hidden;
            -webkit-backface-visibility: hidden;
            transform-style: preserve-3d;
            -webkit-transform-style: preserve-3d;
        }

        .fb-activity
        {
            z-index: 1;
            left: 773px;
            top: 32px;
            position: absolute;
            height: 19px;
            width: 106px;
        }

        #portrait
        {
            z-index: 1;
            left: 7px;
            top: 530px;
            position: absolute;
        }
    #Image1 {
		z-index: 1;
		left: 204px;
		top: 82px;
		position: absolute;
		width: 238px;
	}
    </style>

 <!-- Load Facebook SDK for JavaScript -->
    <div id="fb-root"></div>
    <script>(function(d, s, id) {
      var js, fjs = d.getElementsByTagName(s)[0];
      if (d.getElementById(id)) return;
      js = d.createElement(s); js.id = id;
      js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1";
      fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>

<!-- Begin BidVertiser code
<SCRIPT SRC="http://bdv.bidvertiser.com/BidVertiser.dbm?pid=684725&bid=1711922" TYPE="text/javascript"></SCRIPT>
 End BidVertiser code --> 


    <form id="form11" runat="server">
 <asp:ScriptManager ID="ScriptManager1" runat="server">
	</asp:ScriptManager>

<div class="fb-like-box" data-href="https://www.facebook.com/Treasurehuntergame" data-colorscheme="light" data-show-faces="false" data-header="false" data-stream="false" data-show-border="false" 
			style="z-index: 351; position: absolute; width: 180px; height: 52px; top: 495px; left: 22px;"></div>
<a href="https://twitter.com/share" class="twitter-share-button" data-lang="en" style="text-decoration: n
 
<div class="fb-share-button" data-href="https://treasurehunter.apphb.com" data-layout="icon_link"></div>
 
 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=c9ddedcf-4582-4aa0-b614-a4710054b560ConnectionString;Initial Catalog=dbc9ddedcf45824aa0b614a4710054b560;Persist Security Info=True;User ID=tddputngypufyqqp;Password=EkBRetznpcHA57dLkka8JPnfM84wFhkpLctYThhwe6CpjHUMyMN4dDrX7veeycNh" SelectCommand="SELECT * FROM appuserdetails" InsertCommand="INSERT INTO loggedusers(luname, luid, luposition, luimg, luspriteimg, lucrisboos, luloggedin, lutspots, lulogintimes, luinvites) Values (@luname, @luid, @luposition, @luimg, @luspriteimg, @lucrisboos, @luloggedin, @lutspots, @lulogintimes, @luinvites)" UpdateCommand="UPDATE appuserdetails SET @uloggedin='yes'">
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
        
        <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="Data Source=c9ddedcf-4582-4aa0-b614-a4710054b560ConnectionString;Initial Catalog=dbc9ddedcf45824aa0b614a4710054b560;Persist Security Info=True;User ID=tddputngypufyqqp;Password=EkBRetznpcHA57dLkka8JPnfM84wFhkpLctYThhwe6CpjHUMyMN4dDrX7veeycNh" SelectCommand="SELECT * FROM [tspots]"></asp:SqlDataSource>
        <asp:Label ID="Label1" runat="server" style="top: 160px; left: 272px; position: absolute; height: 19px; width: 445px" Text="Label"></asp:Label>
        <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="Data Source=c9ddedcf-4582-4aa0-b614-a4710054b560ConnectionString;Initial Catalog=dbc9ddedcf45824aa0b614a4710054b560;Persist Security Info=True;User ID=tddputngypufyqqp;Password=EkBRetznpcHA57dLkka8JPnfM84wFhkpLctYThhwe6CpjHUMyMN4dDrX7veeycNh" SelectCommand="SELECT * FROM [toolbox]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="Data Source=c9ddedcf-4582-4aa0-b614-a4710054b560ConnectionString;Initial Catalog=dbc9ddedcf45824aa0b614a4710054b560;Persist Security Info=True;User ID=tddputngypufyqqp;Password=EkBRetznpcHA57dLkka8JPnfM84wFhkpLctYThhwe6CpjHUMyMN4dDrX7veeycNh" SelectCommand="SELECT [treasurevalue] FROM [treasureprize]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="Data Source=c9ddedcf-4582-4aa0-b614-a4710054b560ConnectionString;Initial Catalog=dbc9ddedcf45824aa0b614a4710054b560;Persist Security Info=True;User ID=tddputngypufyqqp;Password=EkBRetznpcHA57dLkka8JPnfM84wFhkpLctYThhwe6CpjHUMyMN4dDrX7veeycNh" SelectCommand="SELECT * FROM loggedusers" InsertCommand="INSERT INTO loggedusers(luname, luid, luposition, luimg, luspriteimg, lucrisboos, luloggedin, lutspots, lulogintimes, luinvites) Values (@luname, @luid, @luposition, @luimg, @luspriteimg, @lucrisboos, @luloggedin, @lutspots, @lulogintimes, @luinvites)" UpdateCommand="UPDATE appuserdetails SET @uloggedin='yes'">
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
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="Data Source=c9ddedcf-4582-4aa0-b614-a4710054b560ConnectionString;Initial Catalog=dbc9ddedcf45824aa0b614a4710054b560;Persist Security Info=True;User ID=tddputngypufyqqp;Password=EkBRetznpcHA57dLkka8JPnfM84wFhkpLctYThhwe6CpjHUMyMN4dDrX7veeycNh" SelectCommand="SELECT * FROM ordercounter" InsertCommand="INSERT INTO ordercounter(uname, ccounter) Values (@uname, @ccounter)" UpdateCommand="UPDATE ordercounter SET @uname=''">
            <InsertParameters>
                <asp:Parameter Name="uname" />
                <asp:Parameter Name="ccounter" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="uname" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="Data Source=c9ddedcf-4582-4aa0-b614-a4710054b560ConnectionString;Initial Catalog=dbc9ddedcf45824aa0b614a4710054b560;Persist Security Info=True;User ID=tddputngypufyqqp;Password=EkBRetznpcHA57dLkka8JPnfM84wFhkpLctYThhwe6CpjHUMyMN4dDrX7veeycNh" SelectCommand="SELECT * FROM winners" InsertCommand="INSERT INTO winners(uname, crisboos) Values (@uname, @crisboos)" UpdateCommand="UPDATE winners SET @uname=''">
            <InsertParameters>
                <asp:Parameter Name="uname" />
                <asp:Parameter Name="crisboos" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="uname" />
            </UpdateParameters>
        </asp:SqlDataSource>

<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:c9ddedcf-4582-4aa0-b614-a4710054b560ConnectionString %>" SelectCommand="SELECT [tsname] FROM [tspots]" >
        </asp:SqlDataSource>
       
		

		
<asp:UpdatePanel ID="UpdatePanel1" runat="server">

	<ContentTemplate>

			<asp:Panel ID="divplayer"  runat="server" style=" z-index:0; width: 475px; height: 380px; position:  absolute; top: 183px; left: 273px; position:absolute; background-color:transparent">
				<asp:ImageButton ID="crosshair" runat="server" style="z-index:1; top: 45px; left: 89px; position: absolute; height: 41px; width: 47px" ImageUrl="~/images/crosshair.png" />
				<asp:ImageButton ID="explosion" runat="server" style="z-index:1; top: 151px; left: 168px; position: absolute; height: 16px; width: 14px" ImageUrl="~/images/crosshair.png" />	
				<asp:ImageButton ID="ctrl1" runat="server" style="z-index:2; top: 182px; left: 293px; position: absolute; height: 27px; width: 46px" ImageUrl="~/images/fplane.gif" OnClick="ctrl1_Click"  />
				<asp:ImageButton ID="ctrl2" runat="server" style="z-index:2; top: 215px; left: 80px; position: absolute; height: 29px; width: 49px" ImageUrl="~/images/mig-31.gif" OnClick="ctrl2_Click"  />
				<asp:ImageButton ID="ctrl3" runat="server" style="z-index:2; top: 266px; left: 220px; position: absolute; height: 35px; width: 37px" ImageUrl="~/images/goldcoin.gif" OnClick="ctrl3_Click"  />
				<asp:ImageButton ID="ctrl4" runat="server" style="z-index:2; top: 140px; left: 40px; position: absolute; height: 16px; width: 14px" ImageUrl="~/images/fplane.gif" OnClick="ctrl4_Click"  />
				<asp:ImageButton ID="ctrl5" runat="server" style="z-index:2; top: 90px; left: 0px; position: absolute; height: 16px; width: 14px" ImageUrl="~/images/fplane.gif" OnClick="ctrl5_Click" />	
				<asp:ImageButton ID="Img1" runat="server" style="z-index:2; top: 80px; left: 0px; position: absolute; height: 16px; width: 14px" ImageUrl="~/images/fplane.gif" OnClick="Img1_Click" />
				<asp:ImageButton ID="Img2" runat="server" style="z-index:2; top: 63px; left: 248px; position: absolute; height: 16px; width: 14px" ImageUrl="~/images/fplane.gif" OnClick="Img2_Click" />
				<asp:ImageButton ID="Img3" runat="server" style="z-index:2; top: 50px; left: 0px; position: absolute; height: 16px; width: 14px" ImageUrl="~/images/fplane.gif" OnClick="Img3_Click" />
				<asp:ImageButton ID="Img4" runat="server" style="z-index:2; top: 40px; left: 0px; position: absolute; height: 16px; width: 14px" ImageUrl="~/images/fplane.gif" OnClick="Img4_Click" />
				<asp:ImageButton ID="Img5" runat="server" style="z-index:2; top: 60px; left: 0px; position: absolute; height: 16px; width: 14px"  ImageUrl="~/images/fplane.gif" OnClick="Img5_Click" />	
				<asp:ImageButton ID="fplayer" runat="server" style="z-index:0; top: 0px; left: 0px; position: absolute; height: 377px; width: 474px" ImageUrl="images/air.gif" CssClass="twoto3d" />
	
			</asp:Panel>

				<asp:TextBox ID="TextBox1" runat="server" BackColor="Transparent" BorderStyle="None" ClientIDMode="Static" 
				Style="z-index: 1; left: 785px; top: 188px; position: absolute; width: 131px; height:20px; text-align:center; vertical-align:middle;" ForeColor="#33CC33"  ReadOnly="false" 
				Font-Names="OldDreadfulNo7 BT" Font-Size="10pt">Time Remaining</asp:TextBox>

				<asp:TextBox ID="TextBox2" runat="server" BackColor="Transparent" BorderStyle="None" ClientIDMode="Static" 
				Style="z-index: 1; left: 816px; top: 218px; position: absolute; width: 56px; height:20px; text-align:center; vertical-align:middle;" ForeColor="#FFCC00"  ReadOnly="false">120</asp:TextBox>


				<asp:TextBox ID="TextBox4" runat="server" BackColor="Transparent" BorderStyle="None" ClientIDMode="Static" 
				Style="z-index: 1; left: 777px; top: 250px; position: absolute; width: 158px; height:20px; text-align:center; vertical-align:middle;" ForeColor="#FFCC00"  ReadOnly="false" 
				Font-Names="OldDreadfulNo7 BT" Font-Size="10pt">Treasure Spots Owned</asp:TextBox>

				<asp:TextBox ID="TextBox5" runat="server" BackColor="Transparent" BorderStyle="None" ClientIDMode="Static" 
				Style="z-index: 1; left: 825px; top: 276px; position: absolute; width: 56px; height:20px; text-align:center; vertical-align:middle;" ForeColor="#FFCC00"  ReadOnly="True">120</asp:TextBox>

				<asp:TextBox ID="TextBox6" runat="server" BackColor="Transparent" BorderStyle="None" ClientIDMode="Static" 
				Style="z-index: 1; left: 777px; top: 320px; position: absolute; width: 158px; height:20px; text-align:center; vertical-align:middle;" ForeColor="#FFCC00"  ReadOnly="false" 
				Font-Names="OldDreadfulNo7 BT" Font-Size="10pt">Treasure Spots Collected</asp:TextBox>

				<asp:TextBox ID="TextBox7" runat="server" BackColor="Transparent" BorderStyle="None" ClientIDMode="Static" 
				Style="z-index: 1; left: 825px; top: 350px; position: absolute; width: 56px; height:20px; text-align:center; vertical-align:middle;" ForeColor="#FFCC00"  ReadOnly="false">120</asp:TextBox>

				<asp:TextBox ID="TextBox8" runat="server" BackColor="Transparent" BorderStyle="None" ClientIDMode="Static" 
				Style="z-index: 1; left: 777px; top: 390px; position: absolute; width: 158px; height:20px; text-align:center; vertical-align:middle;" ForeColor="#FFCC00"  ReadOnly="false" 
				Font-Names="OldDreadfulNo7 BT" Font-Size="10pt">Coins Collected</asp:TextBox>

				<asp:TextBox ID="TextBox9" runat="server" BackColor="Transparent" BorderStyle="None" ClientIDMode="Static" 
				Style="z-index: 1; left: 829px; top: 415px; position: absolute; width: 56px; height:20px; text-align:center; vertical-align:middle;" ForeColor="#FFCC00"  ReadOnly="false">120</asp:TextBox>

				<asp:TextBox ID="TextBox10" runat="server" BackColor="Transparent" BorderStyle="None" ClientIDMode="Static" 
				Style="z-index: 1; left: 777px; top: 450px; position: absolute; width: 158px; height:20px; text-align:center; vertical-align:middle;" ForeColor="#FFCC00"  ReadOnly="false" 
				Font-Names="OldDreadfulNo7 BT" Font-Size="10pt">Level</asp:TextBox>

				<asp:TextBox ID="TextBox11" runat="server" BackColor="Transparent" BorderStyle="None" ClientIDMode="Static" 
				Style="z-index: 1; left: 829px; top: 475px; position: absolute; width: 56px; height:20px; text-align:center; vertical-align:middle;" ForeColor="#FFCC00"  ReadOnly="false">120</asp:TextBox>




				<asp:TextBox ID="TextBox3" runat="server" BackColor="Transparent" BorderStyle="None" ClientIDMode="Static" 
				Style="z-index: 1; left: 808px; top: 25px; position: absolute; width: 131px; height:20px; text-align:center; vertical-align:middle;" ForeColor="#FFCC00"  ReadOnly="false" 
				Font-Names="OldDreadfulNo7 BT" Font-Size="10pt">Mobile Version</asp:TextBox>

				
				<asp:HyperLink ID="Hyperlink6" runat="server" Font-Underline="False" NavigateUrl="http://www.amazon.com/gp/product/B00I2DV2UO" 
				Style="z-index: 1; border-radius: 2px; background-color: #FF9900; left: 825px; top: 51px; position: absolute; height: 38px; width: 100px; cursor: pointer;" Target="_self" ForeColor="Transparent" 
				ImageUrl="https://treasurehunter.apphb.com/Images/amazon.png"></asp:HyperLink>

				<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="tsname" DataValueField="tsname" 
				style="z-index: 1; left: 309px; top: 106px; position: absolute; height: 48px; width: 357px; border-radius: 15px;" BackColor="Transparent" Font-Names="Odessa LET" ForeColor="#FFFFCC" Font-Size="11pt" 
				ToolTip="Select Your Favorite Treasure Spots to Start Play">
				</asp:DropDownList>

</ContentTemplate>
	

		

		<Triggers>
			<asp:AsyncPostBackTrigger ControlID="ctrl1" EventName="Click" />
			<asp:AsyncPostBackTrigger ControlID="ctrl2" EventName="Click" />
			<asp:AsyncPostBackTrigger ControlID="ctrl3" EventName="Click" />
			<asp:AsyncPostBackTrigger ControlID="ctrl4" EventName="Click" />
			<asp:AsyncPostBackTrigger ControlID="ctrl5" EventName="Click" />
			<asp:AsyncPostBackTrigger ControlID="Img1" EventName="Click" />
			<asp:AsyncPostBackTrigger ControlID="Img2" EventName="Click" />
			<asp:AsyncPostBackTrigger ControlID="Img3" EventName="Click" />
			<asp:AsyncPostBackTrigger ControlID="Img4" EventName="Click" />
			<asp:AsyncPostBackTrigger ControlID="ctrl5" EventName="Click" />
	</Triggers>
	

		

		</asp:UpdatePanel>


</form>
</body>
</html>
