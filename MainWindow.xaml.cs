using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.IO;
using System.Windows.Forms;
using System.Drawing;
using System.Data;
using System.Collections;
using System.ComponentModel;


namespace Automatic_File_Move_V01._1
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        FileSystemWatcher watcher = new FileSystemWatcher();
        bool watcherStarted = false;
        ulong filesMovedCount = 0;
        
        public MainWindow()
        {
            InitializeComponent();
        }

        private void btnSourcePath_Click(object sender, RoutedEventArgs e)
        {
            bool cancelled;
            string sourcePath = getPath(out cancelled);
            if (!cancelled) txtSourcePath.Text = sourcePath;
        }

        private void btnDestinationPath_Click(object sender, RoutedEventArgs e)
        {
            bool cancelled;
            string destinationPath = getPath(out cancelled);
            if (!cancelled) txtDestinationPath.Text = destinationPath;
        }

        private string getPath(out bool cancelled)
        {

            string path = "";
            cancelled = false;
            FolderBrowserDialog sourceFolderBrowserDialog = new FolderBrowserDialog();
            DialogResult result = sourceFolderBrowserDialog.ShowDialog();
            path = sourceFolderBrowserDialog.SelectedPath;
            if (path.Length <= 0) cancelled = true;
            return path;
            
        }

        private void InitializeWatcher()
        {
            watcher.NotifyFilter = NotifyFilters.LastAccess | NotifyFilters.LastWrite
           | NotifyFilters.FileName | NotifyFilters.DirectoryName;
            watcher.Filter = "*.*";
            //watcher.Changed += new FileSystemEventHandler(OnChanged);
            watcher.Created += new FileSystemEventHandler(OnChanged);
            //watcher.Deleted += new FileSystemEventHandler(OnChanged);
            watcher.Renamed += new RenamedEventHandler(OnRenamed);
            watcherStarted = true;
            
        }

        private void OnChanged(object source, FileSystemEventArgs e)
        {
            MoveFile(e.Name);
        }

        private void OnRenamed(object source, FileSystemEventArgs e)
        {
            MoveFile(e.Name);
        }

        /// <summary>
        /// Moves filename from the source path to the destination path as defined on the form
        /// OVERWRITES all duplicated filenames
        /// </summary>
        /// <param name="fileName"></param>
        private void MoveFile(string fileName)
        {
            string sourceFile = "";
            string destinationFile = "";
            this.Dispatcher.Invoke(new Action(() =>
            {
                sourceFile = @"" + txtSourcePath.Text + "\\" + fileName;
                destinationFile = @"" + txtDestinationPath.Text + "\\" + fileName;
            }));

            //To overwrite if file already exists in destination, the destination file must be deleted first
            //if (File.Exists(destinationFile))
            //{
            File.Delete(destinationFile);
            //}

            // To move a file or folder to a new location:
            bool fileMoved = false;
            int tries = 0;
            while (!fileMoved)
            {
                if (tries == 1000) break;
                try
                {
                    tries++;
                    System.IO.File.Move(sourceFile, destinationFile);
                    fileMoved = true;
                    filesMovedCount++;
                    Console.WriteLine(String.Format("{0}: {1}",filesMovedCount, sourceFile));
                }
                catch
                { 
                }
            }
        }

        private void btnStart_Click(object sender, RoutedEventArgs e)
        {
            if (Directory.Exists(txtSourcePath.Text) && Directory.Exists(txtDestinationPath.Text))
            {
                MoveAllExistingFiles();
                SwitchStartStop();
                if (!watcherStarted) InitializeWatcher();
                watcher.Path = txtSourcePath.Text;
                watcher.EnableRaisingEvents = true;
            }
            else
            {
                System.Windows.MessageBox.Show("One of the two directory paths does not exist");
            }

        }

        private void btnStop_Click(object sender, RoutedEventArgs e)
        {
            SwitchStartStop();
            watcher.EnableRaisingEvents = false;
            //watcher.Dispose();
        }

        private void btnClose_Click(object sender, RoutedEventArgs e)
        {
            System.Windows.Application.Current.Shutdown();
        }

        private void SwitchStartStop()
        {
            btnStop.IsEnabled = !btnStop.IsEnabled;
            btnStart.IsEnabled = !btnStart.IsEnabled;
            btnSourcePath.IsEnabled = !btnSourcePath.IsEnabled;
            btnDestinationPath.IsEnabled = !btnDestinationPath.IsEnabled;
            txtSourcePath.IsEnabled = !txtSourcePath.IsEnabled;
            txtDestinationPath.IsEnabled = !txtDestinationPath.IsEnabled;
        }

        private void MoveAllExistingFiles()
        {
            string[] files = Directory.GetFiles(txtSourcePath.Text);
            foreach (string file in files)
            {
                string curFile = System.IO.Path.GetFileName(file);
                MoveFile(curFile);
            }
        }

        private void chkShowConsole_CheckedChanged(object sender, RoutedEventArgs e)
        {
            ConsoleManager.Toggle();
        }
    }
}
