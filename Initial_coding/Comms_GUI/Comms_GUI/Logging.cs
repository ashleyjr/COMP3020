using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;

namespace Comms_GUI
{
    class Logging
    {
        List<string> toLog = new List<string>();
        StreamWriter log;
        long Entry_counter;

        public Logging()
        {
            NewLog();
            Entry_counter = 0;
        }

        private void NewLog()
        {
            string path = DateTime.Now.ToString("dd-MM-yy_HHmm");
            //Should never happen
            //but incase the log has the same name
            //this will force a log file to be made
            int index = 0;
            while (File.Exists(path + ".log"))
            {
                path = path + "_" + index.ToString();
                index++;
            }
            log = File.CreateText(path + ".log");
            log.WriteLine("***************************************************");
            log.WriteLine("LOG FILE");
            log.WriteLine("");
            log.WriteLine("User:          " + Environment.UserName.ToString());
            log.WriteLine("Computer Name: " + Environment.MachineName.ToString());
            log.WriteLine("Date:          " + DateTime.Now.ToString("dd-MM-yy"));
            log.WriteLine("Time:          " + DateTime.Now.ToString("HHmm-ss"));
            log.WriteLine("***************************************************");  
        }

        //Basic Entry
        public void AddLogEntry(string elapsed,string Xaxis,string Yaxis)
        {
            log.WriteLine("=> Entry:        " + Entry_counter.ToString());
            log.WriteLine("   Date:         " + DateTime.Now.ToString("HHmm-ss"));
            log.WriteLine("   Time elapsed: " + elapsed + "s");
            log.WriteLine("   Xais angle:   " + Xaxis);
            log.WriteLine("   Yaxis angle:  " + Yaxis);
            log.WriteLine("");

            Entry_counter++;
        }

        //Warning Entry
        public void AddLogEntry(string elapsed, string Xaxis, string Yaxis, string warning)
        {
            log.WriteLine("=> WARNING ============> Entry:        " + Entry_counter.ToString() );
            log.WriteLine("                         Date:         " + DateTime.Now.ToString("HHmm-ss"));
            log.WriteLine("                         Time elapsed: " + elapsed + "s");
            log.WriteLine("                         Xais angle:   " + Xaxis);
            log.WriteLine("                         Yaxis angle:  " + Yaxis);
            log.WriteLine("   Message:");
            log.WriteLine("   " + warning);
            log.WriteLine("");
            log.WriteLine("");

            Entry_counter++;
        }

        public void DumpLog()
        {
            foreach (string line in toLog)
            {
                log.WriteLine(line);
            }
            log.Close();
        }

    }
}
