using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoImc
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalcular_Click(object sender, EventArgs e)
        {

            float peso, alt, result, result2;

            alt = Convert.ToSingle(txtAlt.Text);
            peso = Convert.ToSingle(txtPeso.Text);

            result2 = alt * alt;
            result = peso / result2;


            if (result < 14)
            {
                lblResult.ForeColor = Color.Green;
                lblResult.Text = $"MAGREZA: {result.ToString()}";
            }
            else if (result >= 18.5 && result <= 24.9)
                {
                    lblResult.ForeColor = Color.Green;
                    lblResult.Text = $"NORMAL {result.ToString()}";
                }
                else if (result >= 25.0 && result <= 29.9)
                    {
                        lblResult.ForeColor = Color.Green;
                        lblResult.Text = $"SOBREPESO {result.ToString()}";
                    }
                    else if (result >= 30.0 && result <= 39.9)
                        {
                            lblResult.ForeColor = Color.Green;
                            lblResult.Text = $"OBESIDADE {result.ToString()}";
                        }
                        else if (result > 40)
                        {
                            lblResult.ForeColor = Color.Green;
                            lblResult.Text = $"OBESIDADE GRAVE {result.ToString()}";
                        }
                        else
                            {
                                lblResult.ForeColor = Color.Red;
                                lblResult.Text = $"pão {result.ToString()}";
                            }
        }
    }
}