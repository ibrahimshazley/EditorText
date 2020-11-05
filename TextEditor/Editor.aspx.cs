using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using TextEditor;

namespace TextEditorWeb
{
    public partial class Editor : System.Web.UI.Page
    {
        public static EditorTestEntities context = new EditorTestEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //protected void btnText_Click(object sender, EventArgs e)
        //{
        //    txtReText.Text = hdText.Value;
        //}

        [WebMethod]
        public static dynamic Save(string textEditor)
        {
            try
            {
                EditorText Editor = new EditorText();
                Editor.Text = WebUtility.HtmlEncode(textEditor);
                context.EditorText.Add(Editor);
                context.SaveChanges();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }
        [WebMethod]
        public static EditorText Get()
        {
            EditorText Editor = new EditorText();

            try
            {
                var data = context.EditorText.FirstOrDefault();
                if (data != null)
                {
                    Editor.ID = data.ID;
                    Editor.Text = WebUtility.HtmlDecode(data.Text);
                }
                return Editor;
            }
            catch (Exception ex)
            {
                return Editor;

            }
        }

    }
}