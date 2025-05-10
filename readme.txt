https://localhost:44314/Sales?From=2023-12-15&To=2024-02-14&ByCategory=1&ByRegion=2

# Sales API

An ASP.NET Core Web API that provides sales data for analytics, supporting filtering by date, category, and region.

---

##  Prerequisites

| Tool            | Version Required |
|-----------------|------------------|
| [.NET SDK](https://dotnet.microsoft.com/) | 8.0 or later      |
| SQL Server (Optional) | 2019 or later     |
| Node.js (for front-end, optional) | v16+               |
| Python (if used for ETL or data scripting) | 3.9+              |
| Visual Studio / VS Code | Latest             |

---

## How to Run

1. **Clone the repository**
   ```bash
   git clone https://github.com/your-repo/sales-api.git
   cd sales-api

2."ConnectionStrings": {
  "DefaultConnection": "Server=.;Database=SalesDb;Trusted_Connection=True;"
}
3.dotnet ef database update
4.dotnet run
5.https://localhost:<port>/swagger

6. API Definitions
| Route    | Method | Query Parameters                                                                               | Body | Sample Response                                                                                                                      | Description                                                                                                                  |
| -------- | ------ | ---------------------------------------------------------------------------------------------- | ---- | ------------------------------------------------------------------------------------------------------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------- |
| `/Sales` | GET    | `From (DateTime)`, `To (DateTime)`, `ByCategory (enum, optional)`, `ByRegion (enum, optional)` | None | `json<br>{<br>  "OverAllQuantity": 0,<br>  "StartDate": "2025-05-10T20:31:26.700Z",<br>  "EndDate": "2025-05-10T20:31:26.700Z"<br>}` | Returns the overall sales quantity for products within the specified date range, optionally filtered by category and region. |

7. Enums: *Category->
Electronics,
Clothing,
Shoes.

*Region->
NorthAmerica,
SouthAmerica,
Europe,
Asia

8.Dev hints:
Exception handling is built-in for invalid date ranges or missing parameters.

Swagger is enabled at /swagger for easy testing.

Make sure the database is populated with data before querying /Sales.