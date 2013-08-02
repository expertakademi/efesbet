namespace ImportScrapXMLData
{
    partial class FormImportScrapXMLData
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.btnInset = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // btnInset
            // 
            this.btnInset.Location = new System.Drawing.Point(138, 91);
            this.btnInset.Name = "btnInset";
            this.btnInset.Size = new System.Drawing.Size(75, 23);
            this.btnInset.TabIndex = 0;
            this.btnInset.Text = "Insert";
            this.btnInset.UseVisualStyleBackColor = true;
            this.btnInset.Click += new System.EventHandler(this.btnInset_Click);
            // 
            // FormImportScrapXMLData
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.Control;
            this.ClientSize = new System.Drawing.Size(392, 366);
            this.Controls.Add(this.btnInset);
            this.Name = "FormImportScrapXMLData";
            this.Text = "Import Xml  Data";
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btnInset;
    }
}

