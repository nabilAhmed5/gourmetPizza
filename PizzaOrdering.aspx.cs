using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GourmetPizza
{
    public partial class PizzaOrdering : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void View4_Activate(object sender, EventArgs e)
        {
            LabelT.Text = "Title is: " + RadioButtonList1.Text;
            LabelFName.Text = "First Name: " + TextBox1.Text;
            LabelLName.Text = "Last Name: " + TextBox2.Text;
            LabelDOB.Text = "Date of birth: " + TextBox3.Text;
            LabelAd.Text = "Address: " + TextBox4.Text;
            LabelSub.Text = "Suburb: " + TextBox5.Text;
            LabelSt.Text = "State: " + DropDownList1.SelectedItem.Text;
            LabelPC.Text = "Postcode: " + TextBox6.Text;
            LabelMP.Text = "Mobile Phone number: " + TextBox7.Text;
            LabelEA.Text = "Email address: " + TextBox8.Text;
            LabelPT.Text = "Pizza type: " + DropDownList2.SelectedItem.Text;
            LabelPS.Text = "Pizza size: " + DropDownList3.SelectedItem.Text;
            LabelQuantity.Text = "Quantity: " + TextBox9.Text;
            LabelCType.Text = "Credit card type: " + RadioButtonList2.SelectedItem.Text;
            LabelNC.Text = "Name on card: " + TextBox1.Text + " " + TextBox2.Text;
            LabelCN.Text = "Credit card number: " + TextBox12.Text;
            LabelEx.Text = "Expiry month: " + DropDownList4.SelectedItem.Text;
            LabelExY.Text = "Expiry year: " + TextBox14.Text;
            LabelSC.Text = "Security Code: " + TextBox15.Text;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // use a Label control to display confirmation on successful submission
                LabelResults.Text = $"Thanks, {TextBox1.Text} {TextBox2.Text}. You have ordered successfully!";
            }

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if(Page.IsValid)
            {
                Label21.Text = TextBox1.Text + " " + TextBox2.Text;
            }
    
        }
    }
}