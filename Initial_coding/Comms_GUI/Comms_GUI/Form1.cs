using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace Comms_GUI
{
    public partial class Comms_GUI : Form
    {
        private double total_counter;

        private double Xaxis;
        private double Yaxis;

        private Logging Log = new Logging();

        public Comms_GUI()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            //Variable setup
            total_counter = 0;
            Xaxis = 0;
            Yaxis = 0;
            //Chart setup
            XY_chart.Series["X_Vs_Y_Angle"].BorderWidth = 4;
            XY_chart.ChartAreas[0].AxisX.Maximum = 90;
            XY_chart.ChartAreas[0].AxisX.Minimum = -90;
            XY_chart.ChartAreas[0].AxisY.Maximum = 90;
            XY_chart.ChartAreas[0].AxisY.Minimum = -90;
            XY_chart.Series["X_Vs_Y_Angle"].Points.AddXY(0, 0);

            Time_XY_chart.Series["Xaxis_Angle"].BorderWidth = 4;
            Time_XY_chart.Series["Yaxis_Angle"].BorderWidth = 4;

            //The rest
            Step_timer.Enabled = false;
            Timer_label.Text = "Timer elapsed:";
        }

        private void Step_timer_Tick(object sender, EventArgs e)
        {
            total_counter += 0.1;
            Update_time_label();
            Time_XY_chart.Series["Xaxis_Angle"].Points.AddXY(total_counter, Xaxis);
            Time_XY_chart.Series["Yaxis_Angle"].Points.AddXY(total_counter, Yaxis);

            XY_chart.Series["X_Vs_Y_Angle"].Points.Clear();
            XY_chart.Series["X_Vs_Y_Angle"].Points.AddXY(Xaxis, Yaxis);

            if (((Xaxis < -45) | (Xaxis > 45)) && ((Yaxis < -45) | (Yaxis > 45)))
            {
                Log.AddLogEntry(
                                total_counter.ToString(),
                                Xaxis.ToString(),
                                Yaxis.ToString(),
                                "Xaxis and Yaxis has exceeded 45 degrees tilt"
                                );
            }
            else
            {
                if ((Xaxis < -45) | (Xaxis > 45))
                {
                    Log.AddLogEntry(
                                total_counter.ToString(),
                                Xaxis.ToString(),
                                Yaxis.ToString(),
                                "Xaxis has exceeded 45 degrees tilt"
                                );
                }
                else
                {
                    if ((Yaxis < -45) | (Yaxis > 45))
                    {
                        Log.AddLogEntry(
                                    total_counter.ToString(),
                                    Xaxis.ToString(),
                                    Yaxis.ToString(),
                                    "Yaxis has exceeded 45 degrees tilt"
                                    );
                    }
                    else
                    {
                        Log.AddLogEntry(
                                total_counter.ToString(),
                                Xaxis.ToString(),
                                Yaxis.ToString()
                                );
                    }
                }             
            }
        }

        //Converts to mins and seconds after 60 seconds
        private void Update_time_label()
        {
            string num_s = "";
            string num_m = "";
            string num_h = "";

            if ((total_counter / 3600) > 1)
            {
                num_h = (total_counter / 3600).ToString();
                if (num_h.Contains("."))
                {
                    num_h = num_h.Split('.')[0];
                }
                num_m = ((total_counter - (Convert.ToInt32(num_h) * 3600)) / 60).ToString();
                if (num_m.Contains("."))
                {
                    num_m = num_m.Split('.')[0];
                }
                num_s = (total_counter - (Convert.ToInt32(num_h) * 3600) - (Convert.ToInt32(num_m) * 60)).ToString();
                if (num_s.Contains("."))
                {
                    num_s = num_s.Split('.')[0];
                }
                Timer_label.Text = "Time elapsed: " + num_h + "h" + num_m + "m" + num_s + "s";
            }
            else
            {
                if ((total_counter / 60) > 1)
                {
                    num_m = (total_counter / 60).ToString();
                    if (num_m.Contains("."))
                    {
                        num_m = num_m.Split('.')[0];
                    }
                    num_s = (total_counter - (Convert.ToInt32(num_m) * 60)).ToString();
                    if (num_s.Contains("."))
                    {
                        num_s = num_s.Split('.')[0];
                    }
                    Timer_label.Text = "Time elapsed: " + num_m + "m" + num_s + "s";
                }
                else
                {
                    num_s = total_counter.ToString();
                    if (num_s.Contains("."))
                    {
                        num_s = num_s.Split('.')[0];
                    }
                    Timer_label.Text = "Time elapsed: " + num_s + "s";
                }
            }
        }

        private void GO_button_Click(object sender, EventArgs e)
        {
            if (GO_button.Text == "GO")
            {
                GO_button.Text = "STOP";
                Step_timer.Enabled = true;
            }
            else
            {
                GO_button.Text = "GO";
                Step_timer.Enabled = false;
            }
        }

        private void Yaxis_trackBar_Scroll(object sender, EventArgs e)
        {
            Yaxis = Yaxis_trackBar.Value;
        }

        private void Xaxis_trackBar_Scroll(object sender, EventArgs e)
        {
            Xaxis = Xaxis_trackBar.Value;
        }

        private void Comms_GUI_FormClosed(object sender, FormClosedEventArgs e)
        {
            Log.DumpLog();
        }



    }
}
