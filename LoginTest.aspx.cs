using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginTest
{
    public partial class LoginTest : System.Web.UI.Page
    {
        public string sex;
        protected void DropDownListProvence_SelectedIndexChanged(object sender, EventArgs e)
        {
            string[] jiangxi = { "南昌市", "赣州市", "贵溪市", "鹰潭市", "上饶市", "抚州市" };
            string[] zhejiang = { "杭州市", "宁波市", "绍兴市", "金华市", "衢州市", "温州市" };
            string[] sichuan= { "成都市", "攀枝花市", "泸州市", "乐山市", "绵阳市", "广元市" };
            string[] henan= { "郑州市", "开封市", "洛阳市", "新乡市", "焦作市", "商丘市" };
            //城市信息
            if (this.DropDownListProvence.SelectedValue == "江西省")
            {
                this.DropDownListCity.DataSource = jiangxi;
                this.DropDownListCity.DataBind();
            }
            if (this.DropDownListProvence.SelectedValue == "浙江省")
            {
                this.DropDownListCity.DataSource = zhejiang;
                this.DropDownListCity.DataBind();
            }
            if (this.DropDownListProvence.SelectedValue == "四川省")
            {
                this.DropDownListCity.DataSource = sichuan;
                this.DropDownListCity.DataBind();
            }
            if (this.DropDownListProvence.SelectedValue == "河南省")
            {
                this.DropDownListCity.DataSource = henan;
                this.DropDownListCity.DataBind();
            }
            if (this.DropDownListProvence.SelectedValue == "请选择")
            {
                this.DropDownListCity.Items.Clear();
                this.DropDownListCity.Items.Add("请选择"); 
            }
        }

        protected void ButtonRegister_Click(object sender, EventArgs e)
        {
            string EmailPattern = @"^\w+@\w{2,5}.com";
            string TelPattern = @"^\d{11}$";
            if (this.UsernameInput.Text != "")
            {
                if (this.PasswordInput.Text != "")
                {
                    if (this.ConfirmInput.Text != "")
                    {
                        if (this.ConfirmInput.Text == this.PasswordInput.Text)
                        {
                            if (this.RadioButtonMan.Checked)
                            {
                                sex = RadioButtonMan.Text;
                            }
                            if (this.RadioButtonMale.Checked)
                            {
                                sex = RadioButtonMale.Text;
                            }
                            if (Regex.IsMatch(this.TextBoxEmail.Text, EmailPattern))
                            {
                                if (Regex.IsMatch(this.TextBoxTel.Text, TelPattern))
                                {
                                    Application["Username"] = UsernameInput.Text;
                                    Application["name"] = NameInput.Text;
                                    Application["Password"] = PasswordInput.Text;
                                    Application["sex"] = sex;
                                    Application["address"] = this.DropDownListProvence.SelectedValue + this.DropDownListCity.SelectedValue + this.TextBoxAddress.Text;
                                    Application["email"] = TextBoxEmail.Text;
                                    Application["tel"] = TextBoxTel.Text;
                                    this.Response.Write("<script>alert('注册成功');</script>");
                                    Response.Redirect("Login.aspx");
                                }
                                else
                                {
                                    this.Response.Write("<script>alert('电话号码格式错误');</script>");
                                }
                            }
                            else
                            {
                                this.Response.Write("<script>alert('邮箱格式错误');</script>");
                            }
                        }
                        else
                        {
                            this.Response.Write("<script>alert('密码与确认密码不相同');</script>");
                        }
                    }
                    else
                    {
                        this.Response.Write("<script>alert('确认密码不能为空');</script>");
                    }
                }
                else
                {
                    this.Response.Write("<script>alert('密码不能为空');</script>");
                }
            }
            else
            {
                this.Response.Write("<script>alert('用户名不能为空');</script>");
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            PasswordInput.Attributes.Add("value", PasswordInput.Text);
            ConfirmInput.Attributes.Add("value", ConfirmInput.Text);
        }
    }
}