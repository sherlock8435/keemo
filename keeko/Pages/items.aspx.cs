﻿using ServiceReference1;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_items : System.Web.UI.Page
{
    readonly Service1Client serv = new Service1Client();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"] == null)
        {
            Response.Redirect("log_in.aspx");
        }
        else if (!IsPostBack)
        {
            BindData();
        }
    }


    private void BindData()
    {
        DataTable dt = serv.GetItems();

        List<Item> items = new List<Item>();
        Item item;


        for (int i = 0, j = 0; i < dt.Rows.Count; i++, j++)
        {
            item = new Item
            {
                ItemID = int.Parse(dt.Rows[i]["ItemID"].ToString()),
                Name = dt.Rows[i]["Name"].ToString(),
                Price = int.Parse(dt.Rows[i]["Price"].ToString()),
                ItemImg = dt.Rows[i]["ItemImg"].ToString(),
                Quantity = int.Parse(dt.Rows[i]["Quantity"].ToString()),
                Description = dt.Rows[i]["Description"].ToString(),
                Category = dt.Rows[i]["Category"].ToString()
            };
            if (item != null)
                items.Add(item);
        }

        GridView.DataSource = items;
        GridView.AutoGenerateColumns = false;
        GridView.DataBind();

    }



    protected void PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView.PageIndex = e.NewPageIndex;

        BindData();
    }



    protected void Cart_Click(object sender, EventArgs e)
    {


    }

    protected void view_Click(object sender, EventArgs e)
    {

    }

    protected void GridView_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void cart_Command(object sender, CommandEventArgs e)
    {
        int a = int.Parse(e.CommandArgument.ToString());
        Item item = serv.SelectItemByID(a);
        serv.AddItemToCart(Session["email"].ToString(), item);
    }

    protected void view_Command(object sender, CommandEventArgs e)
    {
        string a = e.CommandArgument.ToString();
        Response.Redirect("chocolate/" + a);
    }
}