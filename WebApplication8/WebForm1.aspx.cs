using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace WebApplication8
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitPasswordLogin_Click(object sender, EventArgs e)
        {

            var loginPassword = new Dictionary<string, string>()
            {
                { "oleg", "123"},
                { "anton", "345"},
                { "peter", "zxc"}
            };

            if (loginPassword.ContainsKey(textLogin.Text.ToLower()))
            {
                if (loginPassword[textLogin.Text.ToLower()] == textPassword.Text)
                {
                    Response.Redirect("welcome.aspx");
                }
                else wrongLoginOrPassword.Visible = true;

            }
            else wrongLoginOrPassword.Visible = true;

            textLogin.Text = "";
            textPassword.Text = "";
        }

        protected void SubmitData_Click(object sender, EventArgs e)
        {
            if (text.Text.Length == 0
                || list.SelectedIndex == -1
                || radioButtonList.SelectedIndex == -1)
            {
                labeDataClear.Text = "Вы не ввели все данные";
                labeDataClear.Visible = true;
                return;
            }

            labelData.Visible = true;
            labelData.Text = text.Text
                + list.SelectedItem.ToString()
                + dropDownList.SelectedItem.ToString()
                + radioButtonList.SelectedItem.ToString()
            ;

        }

    }
}