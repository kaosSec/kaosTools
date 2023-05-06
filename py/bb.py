import mechanicalsoup
browser = mechanicalsoup.Browser()
class priv_beach:
    def request(url: str):
        response = requests.get(url)
        data = response.json()
        print(data)
    def cmd(self):
        zz = input("url>")
        self.request(zz)
    def get_employee_names(company_name: str):
        linkedin_url = f"https://www.linkedin.com/search/results/people/?keywords={company_name}&origin=FACETED_SEARCH"
        indeed_url = f"https://www.indeed.com/find-jobs.jsp?prevUrl=https%3A%2F%2Fwww.indeed.com%2F&from=jasx"
        browser.open(linkedin_url)
        linkedin_results = browser.get_current_page().find_all("li", {"class": "reusable-search__result-container"})
        linkedin_employees = []
        for result in linkedin_results:
            employee_name = result.find("span", {"class": "actor-name"}).text.strip()
            linkedin_employees.append(employee_name)
        browser.open(indeed_url)
        indeed_form = browser.select_form("#whatWhereFormId")
        indeed_form["what"] = company_name
        browser.submit_selected()
        indeed_results = browser.get_current_page().find_all("div", {"class": "jobsearch-SerpJobCard"})
        indeed_employees = []
        for result in indeed_results:
            employee_name = result.find("a", {"class": "jobtitle"})["title"]
            indeed_employees.append(employee_name)
        print("LinkedIn Employees:")
        print("\n".join(linkedin_employees))
        print("\nIndeed Employees:")
        print("\n".join(indeed_employees))
    def single_company():
        xzr: str = input("Company name>")
        get_employee_names(xzr)
    def many_company()
        rzr: str = input("Company file>")
        with open(rzr, "r") as r:
            ccc = r.read()
        for c in ccc:
            get_employee_names(c)
    def search_phone_number(name: str):
        linkedin_url = "https://www.linkedin.com/search/results/people/?keywords=" + name.replace(" ", "%20")
        indeed_url = "https://www.indeed.com/people/" + name.replace(" ", "-")
        phone_numbers = []
        linkedin_page = browser.get(linkedin_url)
        linkedin_results = linkedin_page.soup.find_all("a", class_="app-aware-link", href=True)
        for result in linkedin_results:
            if "tel:" in result["href"]:
                phone_numbers.append(result["href"][4:])
        indeed_page = browser.get(indeed_url)
        indeed_results = indeed_page.soup.find_all("a", href=True)
        for result in indeed_results:
            if "tel:" in result["href"]:
                phone_numbers.append(result["href"][4:])
        return phone_numbers
    def input_single():
        name: str = input("Full name>")
        phone_numbers = search_phone_number(name)
        if len(phone_numbers) == 0:
            print("No phone numbers found for " + name)
        else:
            print("Phone numbers for " + name + ">")
            for phone_number in phone_numbers:
                print(phone_number)
        return 0
    def input_list():
        name_list = input("Name file>")
        with open(name_list, "r") as r:
            names = r.read()
        for name in names:
            phone_numbers = search_phone_number(name)
            if len(phone_numbers) == 0:
                print("No phone numbers found for " + name)
            else:
                print("Phone numbers for " + name + ">")
                for phone_number in phone_numbers:
                    print(phone_number)
        return 0
if __name__ == "__main__":
    welco: string = "Employee names: names"
                    "Employee names from a list for multiple companies: names++"
                    "Single employee's phone number: number"
                    "List of employee phone numbers: list"
                    "Get .JSON from a website request: json"
    print(welco)
    while true:
        choco = input(">")
        if choco == "names":
            priv_beach.single_company()
        if choco == "names++":
            priv_beach.many_company()
        if choco == "number":
            priv_beach.input_single()
        if choco == "list":
            priv_beach.input_list()
        if choco == "json":
            priv_beach.cmd()
            
