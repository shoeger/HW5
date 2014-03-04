<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title> <link rel="stylesheet" type="text/css" href="./StyleSheet.css" />

</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Sam&#39;s Mortgage Calculator
        
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Loan Amount:<asp:TextBox ID="tbLoanAmt" runat="server" ></asp:TextBox>
                  
        <br /><br />      
        
        &nbsp;Annual Interest %:<asp:TextBox ID="tbAnnualInterest" runat="server" ></asp:TextBox>
        
        <br /><br />

        &nbsp;&nbsp;

        Loan Term (Yrs):<asp:TextBox ID="tbLoanTerm" runat="server" ></asp:TextBox>
        
        <br /><br />

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="clearButton" runat="server" Text="Clear" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnCalcPmt" runat="server" TabIndex="4" Text="Calculate" />
            </td>
        </tr>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <% If Not IsPostBack Then%>
            <!-- This is the first time the page has loaded. There is nothing to display. -->

            <p>Welcome to my mortgage calculator. Please complete the fields above to have you monthly payment and loan repayment schedule calculated for you.</p>

        <% Else %>
            <!-- Then page is in postback so show the monthly payment and payment schedule. -->

        <br /><br />
                
        Monthly Payment: &nbsp; <span class="bold"><asp:Label ID="lblMonthlyPmt" runat="server"></asp:Label></span>
        
        <br /><br />
        
        <asp:GridView ID="loanGridView" runat="server" CssClass="cssgridview"><AlternatingRowStyle CssClass="alt" /></asp:GridView>
        <% End If %>
            
        </div>
    </form>
</body>
</html>
