using Docker.DotNet;
using Docker.DotNet.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Caixa.Container
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private readonly DockerClient client;
        public MainWindow()
        {
            InitializeComponent();
            client = new DockerClientConfiguration(
                            new Uri("npipe://./pipe/docker_engine"))
                             .CreateClient();
            Iniciar();
        }

        private async void Iniciar()
        {
            var containers = await client.Containers
                                     .ListContainersAsync(new ContainersListParameters() { Limit = 10 })
                                         .ConfigureAwait(false);

            this.Dispatcher.Invoke((Action)(() =>
            {
                this.dgItem.ItemsSource = containers;
            }));
        }

        private async void StartContainer(string containerId)
        {
            await client.Containers.StartContainerAsync(containerId, new ContainerStartParameters());
            Iniciar();
        }

        private void dgItem_LoadingRow(object sender, DataGridRowEventArgs e)
        {
            var item = e.Row.Item as ContainerListResponse;
            if (item != null)
            {
                e.Row.FontSize = 12;
                e.Row.FontWeight = FontWeights.Bold;

                if (item.State == "exited")
                    e.Row.Foreground = new SolidColorBrush(Colors.Red);
                else
                    e.Row.Foreground = new SolidColorBrush(Colors.Green);
            }
        }

        private void dgItem_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            var grid = sender as DataGrid;
            var cellValue = grid.SelectedValue as ContainerListResponse;

            if (cellValue.State == "exited")
            {
                StartContainer(cellValue.ID);
            }
        }
    }
}
