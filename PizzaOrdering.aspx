<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PizzaOrdering.aspx.cs" Inherits="GourmetPizza.PizzaOrdering" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Gourmet Pizza</title>
    <style>
        .MyLebel{
            display: inline-block;
            width: 150px;        
        }
        h1{
            text-align:center;
            color: darkblue;          

        }
        h2{
            text-align:center;
            color: darkblue;
        }
        body{
            background-color: lightblue;
        }
        br{
            font-family: "Times New Roman", Times, serif;
            font-size: 12px;
        }
        .MyLabel {}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Gourmet Pizza</h1>
            <br />
            <br />
            <p>
                <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                    <asp:View ID="View1" runat="server">
                        <h2>Customer Details</h2>
                        <br />
                        <p>
                            <asp:Label ID="Label1" runat="server" CssClass="MyLabel" Text="Title:"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Title is required" ForeColor="Red" ControlToValidate="RadioButtonList1"></asp:RequiredFieldValidator>
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" CellSpacing="15" RepeatDirection="Horizontal">
                                <asp:ListItem>Mr</asp:ListItem>
                                <asp:ListItem>Mrs</asp:ListItem>
                                <asp:ListItem>Ms</asp:ListItem>
                                <asp:ListItem>Dr</asp:ListItem>
                            </asp:RadioButtonList>
                        </p>
                        <p>
                            <asp:Label ID="Label2" runat="server" CssClass="MyLebel" Text="First Name:"></asp:Label>
                            <asp:TextBox ID="TextBox1" runat="server" BackColor="#FFFFCC"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="First Name is required!" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Can only consists of English letters, apostrophe and hyphen only!" ForeColor="Red" ValidationExpression="^[a-zA-Z'-]+$" ValidateRequestMode="Enabled"></asp:RegularExpressionValidator>
                        </p>
                        <p>
                            <asp:Label ID="Label3" runat="server" CssClass="MyLebel" Text="Last Name:"></asp:Label>
                            <asp:TextBox ID="TextBox2" runat="server" BackColor="#FFFFCC"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="Last Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Can only consists of English letters, apostrophe and hyphen only!" ForeColor="Red" ValidationExpression="^[a-zA-Z'-]+$"></asp:RegularExpressionValidator>
                        </p>
                        <p>
                            <asp:Label ID="Label4" runat="server" CssClass="MyLebel" Text="Date of Birth:"></asp:Label>
                            <asp:TextBox ID="TextBox3" runat="server" BackColor="#FFFFCC"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3" ErrorMessage="DOB is required!" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Date must be prior to 1st july 2000!" ForeColor="Red" Operator="LessThan" Type="Date" ValueToCompare="01/07/2000"></asp:CompareValidator>
                            <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="in the format dd/mm/yyyy or dd-mm-yyyy" ForeColor="Red" Operator="DataTypeCheck" Type="Date"></asp:CompareValidator>
                        </p>
                        <p>
                        <asp:Label ID="Label5" runat="server" CssClass="MyLebel" Text="Address:"></asp:Label>
                        <asp:TextBox ID="TextBox4" runat="server" BackColor="#FFFFCC"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox4" ErrorMessage="Address is required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </p>
                        <p>
                            <asp:Label ID="Label6" runat="server" CssClass="MyLebel" Text="Suburb:"></asp:Label>
                            <asp:TextBox ID="TextBox5" runat="server" BackColor="#FFFFCC"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox5" ErrorMessage="Suburb is required!" ForeColor="Red"></asp:RequiredFieldValidator>
                        </p>
                        <p>
                            <asp:Label ID="Label7" runat="server" CssClass="MyLebel" Text="State:"></asp:Label>
                            <asp:DropDownList ID="DropDownList1" runat="server" BackColor="#FFFFCC">
                                <asp:ListItem>Please Select</asp:ListItem>
                                <asp:ListItem>New South Wales</asp:ListItem>
                                <asp:ListItem>Queensland</asp:ListItem>
                                <asp:ListItem>Victoria</asp:ListItem>
                                <asp:ListItem>Australian Capital Territory</asp:ListItem>
                                <asp:ListItem>Nothern Territory</asp:ListItem>
                                <asp:ListItem>Western Australia</asp:ListItem>
                                <asp:ListItem>South Australia</asp:ListItem>
                                <asp:ListItem>Tasmania</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="DropDownList1" ErrorMessage="State is required!" ForeColor="Red" InitialValue="Please Select"></asp:RequiredFieldValidator>
                        </p>
                        <p>
                            <asp:Label ID="Label8" runat="server" CssClass="MyLebel" Text="Postcode:"></asp:Label>
                            <asp:TextBox ID="TextBox6" runat="server" BackColor="#FFFFCC"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox6" ErrorMessage="Postcode is required!" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox6" ErrorMessage="4 digit number only!" ForeColor="Red" ValidationExpression="\d{4}"></asp:RegularExpressionValidator>
                        </p>
                        <p>
                            <asp:Label ID="Label9" runat="server" CssClass="MyLebel" Text="Mobile Phone:"></asp:Label>
                            <asp:TextBox ID="TextBox7" runat="server" BackColor="#FFFFCC"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox7" ErrorMessage="Mobile phone number is required!" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox7" ErrorMessage="The format is 04dddddddd, where 'd' is a digit" ForeColor="Red" ValidationExpression="(?:\(0\)[4]|\(?0?[4]\)?)\d{8}"></asp:RegularExpressionValidator>
                        </p>
                        <p>
                            <asp:Label ID="Label10" runat="server" CssClass="MyLebel" Text="Email Address:"></asp:Label>
                            <asp:TextBox ID="TextBox8" runat="server" BackColor="#FFFFCC"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox8" ErrorMessage="Email is required!" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBox8" ErrorMessage="Invalid email address format!" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </p>
                        <p>
                            <asp:Button ID="Button1" runat="server" Text="Next" Width="74px" CommandName="NextView" OnClick="Button1_Click"/>
                        </p>
                    </asp:View>
                    <asp:View ID="View2" runat="server">
                        <h2>Order Details</h2>
                        <br />
                        <p>
                            <asp:Label ID="Label11" runat="server" CssClass="MyLebel" Text="Select Pizza Type:"></asp:Label>
                            <asp:DropDownList ID="DropDownList2" runat="server" BackColor="#FFFFCC">
                                <asp:ListItem>Please Select</asp:ListItem>
                                <asp:ListItem>Big Cheese</asp:ListItem>
                                <asp:ListItem>BBQ Beef</asp:ListItem>
                                <asp:ListItem>Chicken and Pineapple</asp:ListItem>
                                <asp:ListItem>Pepperoni Feast</asp:ListItem>
                                <asp:ListItem>Vegetarian</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="DropDownList2" ErrorMessage="Pizza type is required!" ForeColor="Red" InitialValue="Please Select"></asp:RequiredFieldValidator>
                        </p>
                        <p>
                            <asp:Label ID="Label12" runat="server" CssClass="MyLebel" Text="Select Pizza Size:"></asp:Label>
                            <asp:DropDownList ID="DropDownList3" runat="server" BackColor="#FFFFCC">
                                <asp:ListItem>Please Select</asp:ListItem>
                                <asp:ListItem>9 inches</asp:ListItem>
                                <asp:ListItem>11 inches</asp:ListItem>
                                <asp:ListItem>13 inches</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="DropDownList3" ErrorMessage="Pizza size is required!" ForeColor="Red" InitialValue="Please Select"></asp:RequiredFieldValidator>
                        </p>
                        <p>
                            <asp:Label ID="Label13" runat="server" CssClass="MyLebel" Text="Quantity:"></asp:Label>
                            <asp:TextBox ID="TextBox9" runat="server" Height="19px" Width="53px" BackColor="#FFFFCC"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="TextBox9" ErrorMessage="Quantity is required!" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="TextBox9" ErrorMessage="Must be positive number!" ForeColor="Red" Operator="GreaterThan" Type="Integer" ValueToCompare="0"></asp:CompareValidator>
                        </p>
                        <p>
                            <asp:Button ID="Button2" runat="server" CommandName="PrevView" Text="Previous" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button3" runat="server" CommandName="NextView" Text="Next" Width="75px" OnClick="Button3_Click" />
                        </p>
                    </asp:View>
                    <asp:View ID="View3" runat="server">
                        <h2>Payment Details</h2>
                        <br />
                        <p>
                            <asp:Label ID="Label14" runat="server" Text="Credit Card Type:"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="RadioButtonList2" ErrorMessage="Credit card type is required!" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RadioButtonList ID="RadioButtonList2" runat="server">
                                <asp:ListItem>Visa</asp:ListItem>
                                <asp:ListItem>MasterCard</asp:ListItem>
                                <asp:ListItem>Discover</asp:ListItem>
                            </asp:RadioButtonList>
                        </p>
                        
                        <p>
                            <asp:Label ID="Label15" runat="server" CssClass="MyLebel" Text="Name On Card:"></asp:Label>
                            <asp:Label ID="Label21" runat="server"></asp:Label>
                        </p>
                        <p>
                            <asp:Label ID="Label17" runat="server" CssClass="MyLebel" Text="Card Number:"></asp:Label>
                            <asp:TextBox ID="TextBox12" runat="server" BackColor="#FFFFCC"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="TextBox12" ErrorMessage="Card number is required!" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="TextBox12" ErrorMessage="Must be 16 digits number!" ForeColor="Red" ValidationExpression="\d{16}"></asp:RegularExpressionValidator>
                        </p>
                        <p>
                            <asp:Label ID="Label18" runat="server" CssClass="MyLebel" Text="Card Expiry Month:"></asp:Label>
                            <asp:DropDownList ID="DropDownList4" runat="server" BackColor="#FFFFCC">
                                <asp:ListItem>Please Select</asp:ListItem>
                                <asp:ListItem>January</asp:ListItem>
                                <asp:ListItem>February</asp:ListItem>
                                <asp:ListItem>March</asp:ListItem>
                                <asp:ListItem>April</asp:ListItem>
                                <asp:ListItem>May</asp:ListItem>
                                <asp:ListItem>June</asp:ListItem>
                                <asp:ListItem>July</asp:ListItem>
                                <asp:ListItem>August</asp:ListItem>
                                <asp:ListItem>September</asp:ListItem>
                                <asp:ListItem>October</asp:ListItem>
                                <asp:ListItem>November</asp:ListItem>
                                <asp:ListItem>December</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="DropDownList4" ErrorMessage="Expiry month is required!" ForeColor="Red" InitialValue="Please Select"></asp:RequiredFieldValidator>
                        </p>
                        <p>
                            <asp:Label ID="Label19" runat="server" CssClass="MyLebel" Text="Card Expiry Year:"></asp:Label>
                            <asp:TextBox ID="TextBox14" runat="server" BackColor="#FFFFCC"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="TextBox14" ErrorMessage="Expiry year is required!" ForeColor="Red"></asp:RequiredFieldValidator>
                        </p>
                        <p>
                            <asp:Label ID="Label20" runat="server" CssClass="MyLebel" Text="Card Security Code:"></asp:Label>
                            <asp:TextBox ID="TextBox15" runat="server" Width="55px" BackColor="#FFFFCC"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="TextBox15" ErrorMessage="Security code is required!" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="TextBox15" ErrorMessage="Must be 3 digits!" ForeColor="Red" ValidationExpression="\d{3}"></asp:RegularExpressionValidator>
                        </p>
                        <p>
                            <asp:Button ID="Button4" runat="server" CommandName="PrevView" Text="Previous " />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button5" runat="server" CommandName="NextView" Text="Next" />
                        </p>
                    </asp:View>
                    <asp:View ID="View4" runat="server" OnActivate="View4_Activate">
                        <h2>Summary</h2>
                        <p>
                            <asp:Label ID="LabelT" runat="server" Text="Title"></asp:Label>
                        </p>
                        <p>
                            <asp:Label ID="LabelFName" runat="server" Text="FirstName"></asp:Label>
                        </p>
                        <p>
                            <asp:Label ID="LabelLName" runat="server" Text="LastName"></asp:Label>
                        </p>
                        <p>
                            <asp:Label ID="LabelDOB" runat="server" Text="DateOfBirth"></asp:Label>
                        </p>
                        <p>
                            <asp:Label ID="LabelAd" runat="server" Text="Address"></asp:Label>
                        </p>
                        <p>
                            <asp:Label ID="LabelSub" runat="server" Text="Suburb"></asp:Label>
                        </p>
                        <p>
                            <asp:Label ID="LabelSt" runat="server" Text="State"></asp:Label>
                        </p>
                        <p>
                            <asp:Label ID="LabelPC" runat="server" Text="PostCode"></asp:Label>
                        </p>
                        <p>
                            <asp:Label ID="LabelMP" runat="server" Text="MobilePhone"></asp:Label>
                        </p>
                        <p>
                            <asp:Label ID="LabelEA" runat="server" Text="EmailAddress"></asp:Label>
                        </p>
                        <p>
                            <asp:Label ID="LabelPT" runat="server" Text="PizzaType"></asp:Label>
                        </p>
                        <p>
                            <asp:Label ID="LabelPS" runat="server" Text="PizzaSize"></asp:Label>
                        </p>
                        <p>
                            <asp:Label ID="LabelQuantity" runat="server" Text="Quantity"></asp:Label>
                        </p>
                        <p>
                            <asp:Label ID="LabelCType" runat="server" Text="CreditCardType"></asp:Label>
                        </p>
                        <p>
                            <asp:Label ID="LabelNC" runat="server" Text="NameOnCard"></asp:Label>
                        </p>
                        <p>
                            <asp:Label ID="LabelCN" runat="server" Text="CardNumber"></asp:Label>
                        </p>
                        <p>
                            <asp:Label ID="LabelEx" runat="server" Text="ExpiryMonth"></asp:Label>
                        </p>
                        <p>
                            <asp:Label ID="LabelExY" runat="server" Text="ExpiryYear"></asp:Label>
                        </p>
                        <p>
                            <asp:Label ID="LabelSC" runat="server" Text="SecurityCode"></asp:Label>
                        </p>
                        <p>
                            <asp:Button ID="Button6" runat="server" CommandArgument="View1" CommandName="SwitchViewByID" Text="Go to customer details" />
                            &nbsp;&nbsp;
                            <asp:Button ID="Button7" runat="server" CommandArgument="View2" CommandName="SwitchViewByID" Text="Go to order details" />
                            &nbsp;
                            <asp:Button ID="Button8" runat="server" CommandArgument="View3" CommandName="SwitchViewByID" Text="Go to payment details" />
                        </p>
                        <p>
                            <asp:Button ID="Button9" runat="server" Text="Submit" OnClick="Button9_Click" />
                        </p>
                    </asp:View>
                </asp:MultiView>
            </p>
        </div>
        <asp:Label ID="LabelResults" runat="server" ForeColor="Red"></asp:Label>
    </form>
</body>
</html>
