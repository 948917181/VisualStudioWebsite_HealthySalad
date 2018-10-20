using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(FIT5032.Startup))]
namespace FIT5032
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
