# print the username and password
def print_info(name, domain):
    print("username:", name)
    print("domain:", domain)

# getting the password from email
def find_domain(email):
    flag = False
    domain = ""

    for i in range(len(email)):
        if flag:
            domain += email[i]
        if email[i] == '@':
            flag = True

    return domain

# getting the username from email
def find_name(email):
    name = ""
    for i in email:
        if i != '.' and i != '@' and i.isdigit() == False:
            name += i
        else:
            break
    return name

# main function
if __name__ == "__main__":
    email = input()
    name = find_name(email)
    domain = find_domain(email)
    print_info(name, domain)
