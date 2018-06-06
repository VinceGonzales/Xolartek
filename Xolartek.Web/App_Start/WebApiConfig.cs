using Newtonsoft.Json.Serialization;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http.Formatting;
using System.Web.Http;

namespace Xolartek.Web
{
    public static class WebApiConfig
    {
        public static void Register(HttpConfiguration config)
        {
            // Web API configuration and services

            // Web API routes
            config.MapHttpAttributeRoutes();

            config.Routes.MapHttpRoute(
                name: "DefaultApi",
                routeTemplate: "api/{controller}/{id}",
                defaults: new { id = RouteParameter.Optional }
            );

            config.Routes.MapHttpRoute(
                name: "FortniteTraits",
                routeTemplate: "api/fortnite/traits/{desc}",
                defaults: new { controller = "service", action = "gettrait", desc = RouteParameter.Optional }
            );

            config.Routes.MapHttpRoute(
                name: "FortniteMaterials",
                routeTemplate: "api/fortnite/materials/{desc}",
                defaults: new { controller = "service", action = "getmaterial", desc = RouteParameter.Optional }
            );

            var jsonFormatter = config.Formatters.OfType<JsonMediaTypeFormatter>().FirstOrDefault();
            jsonFormatter.SerializerSettings.ContractResolver = new CamelCasePropertyNamesContractResolver();
        }
    }
}
