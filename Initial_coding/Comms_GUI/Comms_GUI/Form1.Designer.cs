namespace Comms_GUI
{
    partial class Comms_GUI
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
            this.components = new System.ComponentModel.Container();
            System.Windows.Forms.DataVisualization.Charting.ChartArea chartArea3 = new System.Windows.Forms.DataVisualization.Charting.ChartArea();
            System.Windows.Forms.DataVisualization.Charting.Legend legend3 = new System.Windows.Forms.DataVisualization.Charting.Legend();
            System.Windows.Forms.DataVisualization.Charting.Series series4 = new System.Windows.Forms.DataVisualization.Charting.Series();
            System.Windows.Forms.DataVisualization.Charting.Series series5 = new System.Windows.Forms.DataVisualization.Charting.Series();
            System.Windows.Forms.DataVisualization.Charting.ChartArea chartArea4 = new System.Windows.Forms.DataVisualization.Charting.ChartArea();
            System.Windows.Forms.DataVisualization.Charting.Legend legend4 = new System.Windows.Forms.DataVisualization.Charting.Legend();
            System.Windows.Forms.DataVisualization.Charting.Series series6 = new System.Windows.Forms.DataVisualization.Charting.Series();
            this.Time_XY_chart = new System.Windows.Forms.DataVisualization.Charting.Chart();
            this.XY_chart = new System.Windows.Forms.DataVisualization.Charting.Chart();
            this.Step_timer = new System.Windows.Forms.Timer(this.components);
            this.Yaxis_trackBar = new System.Windows.Forms.TrackBar();
            this.Xaxis_trackBar = new System.Windows.Forms.TrackBar();
            this.Xaxis_label = new System.Windows.Forms.Label();
            this.Yaxis_label = new System.Windows.Forms.Label();
            this.GO_button = new System.Windows.Forms.Button();
            this.Timer_label = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.Time_XY_chart)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.XY_chart)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.Yaxis_trackBar)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.Xaxis_trackBar)).BeginInit();
            this.SuspendLayout();
            // 
            // Time_XY_chart
            // 
            chartArea3.Name = "ChartArea1";
            this.Time_XY_chart.ChartAreas.Add(chartArea3);
            legend3.Name = "Legend1";
            this.Time_XY_chart.Legends.Add(legend3);
            this.Time_XY_chart.Location = new System.Drawing.Point(12, 12);
            this.Time_XY_chart.Name = "Time_XY_chart";
            series4.ChartArea = "ChartArea1";
            series4.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Line;
            series4.Legend = "Legend1";
            series4.Name = "Xaxis_Angle";
            series5.ChartArea = "ChartArea1";
            series5.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Line;
            series5.Legend = "Legend1";
            series5.Name = "Yaxis_Angle";
            this.Time_XY_chart.Series.Add(series4);
            this.Time_XY_chart.Series.Add(series5);
            this.Time_XY_chart.Size = new System.Drawing.Size(450, 300);
            this.Time_XY_chart.TabIndex = 0;
            this.Time_XY_chart.Text = "Time_XY";
            // 
            // XY_chart
            // 
            chartArea4.Name = "ChartArea1";
            this.XY_chart.ChartAreas.Add(chartArea4);
            legend4.Name = "Legend1";
            this.XY_chart.Legends.Add(legend4);
            this.XY_chart.Location = new System.Drawing.Point(468, 12);
            this.XY_chart.Name = "XY_chart";
            series6.ChartArea = "ChartArea1";
            series6.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Point;
            series6.Legend = "Legend1";
            series6.Name = "X_Vs_Y_Angle";
            this.XY_chart.Series.Add(series6);
            this.XY_chart.Size = new System.Drawing.Size(450, 300);
            this.XY_chart.TabIndex = 1;
            this.XY_chart.Text = "XY_chart";
            // 
            // Step_timer
            // 
            this.Step_timer.Tick += new System.EventHandler(this.Step_timer_Tick);
            // 
            // Yaxis_trackBar
            // 
            this.Yaxis_trackBar.Location = new System.Drawing.Point(612, 318);
            this.Yaxis_trackBar.Maximum = 90;
            this.Yaxis_trackBar.Minimum = -90;
            this.Yaxis_trackBar.Name = "Yaxis_trackBar";
            this.Yaxis_trackBar.Size = new System.Drawing.Size(150, 45);
            this.Yaxis_trackBar.TabIndex = 2;
            this.Yaxis_trackBar.Scroll += new System.EventHandler(this.Yaxis_trackBar_Scroll);
            // 
            // Xaxis_trackBar
            // 
            this.Xaxis_trackBar.Location = new System.Drawing.Point(768, 318);
            this.Xaxis_trackBar.Maximum = 90;
            this.Xaxis_trackBar.Minimum = -90;
            this.Xaxis_trackBar.Name = "Xaxis_trackBar";
            this.Xaxis_trackBar.Size = new System.Drawing.Size(150, 45);
            this.Xaxis_trackBar.TabIndex = 3;
            this.Xaxis_trackBar.Scroll += new System.EventHandler(this.Xaxis_trackBar_Scroll);
            // 
            // Xaxis_label
            // 
            this.Xaxis_label.AutoSize = true;
            this.Xaxis_label.Location = new System.Drawing.Point(768, 350);
            this.Xaxis_label.Name = "Xaxis_label";
            this.Xaxis_label.Size = new System.Drawing.Size(32, 13);
            this.Xaxis_label.TabIndex = 4;
            this.Xaxis_label.Text = "Xaxis";
            // 
            // Yaxis_label
            // 
            this.Yaxis_label.AutoSize = true;
            this.Yaxis_label.Location = new System.Drawing.Point(609, 350);
            this.Yaxis_label.Name = "Yaxis_label";
            this.Yaxis_label.Size = new System.Drawing.Size(32, 13);
            this.Yaxis_label.TabIndex = 5;
            this.Yaxis_label.Text = "Yaxis";
            // 
            // GO_button
            // 
            this.GO_button.Location = new System.Drawing.Point(12, 318);
            this.GO_button.Name = "GO_button";
            this.GO_button.Size = new System.Drawing.Size(75, 23);
            this.GO_button.TabIndex = 6;
            this.GO_button.Text = "GO";
            this.GO_button.UseVisualStyleBackColor = true;
            this.GO_button.Click += new System.EventHandler(this.GO_button_Click);
            // 
            // Timer_label
            // 
            this.Timer_label.AutoSize = true;
            this.Timer_label.Location = new System.Drawing.Point(94, 319);
            this.Timer_label.Name = "Timer_label";
            this.Timer_label.Size = new System.Drawing.Size(35, 13);
            this.Timer_label.TabIndex = 7;
            this.Timer_label.Text = "label1";
            // 
            // Comms_GUI
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(932, 388);
            this.Controls.Add(this.Timer_label);
            this.Controls.Add(this.GO_button);
            this.Controls.Add(this.Yaxis_label);
            this.Controls.Add(this.Xaxis_label);
            this.Controls.Add(this.Xaxis_trackBar);
            this.Controls.Add(this.Yaxis_trackBar);
            this.Controls.Add(this.XY_chart);
            this.Controls.Add(this.Time_XY_chart);
            this.Name = "Comms_GUI";
            this.Text = "Comms_GUI";
            this.FormClosed += new System.Windows.Forms.FormClosedEventHandler(this.Comms_GUI_FormClosed);
            this.Load += new System.EventHandler(this.Form1_Load);
            ((System.ComponentModel.ISupportInitialize)(this.Time_XY_chart)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.XY_chart)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.Yaxis_trackBar)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.Xaxis_trackBar)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataVisualization.Charting.Chart Time_XY_chart;
        private System.Windows.Forms.DataVisualization.Charting.Chart XY_chart;
        private System.Windows.Forms.Timer Step_timer;
        private System.Windows.Forms.TrackBar Yaxis_trackBar;
        private System.Windows.Forms.TrackBar Xaxis_trackBar;
        private System.Windows.Forms.Label Xaxis_label;
        private System.Windows.Forms.Label Yaxis_label;
        private System.Windows.Forms.Button GO_button;
        private System.Windows.Forms.Label Timer_label;
    }
}

