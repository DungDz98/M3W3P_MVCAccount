package manager;

import model.Account;

import java.util.ArrayList;

public class AccountManager {
    public ArrayList<Account> list = new ArrayList<>();

    public AccountManager() {
        list.add(new Account(1, "admin", "admin", "admin@gmail.com"));
    }

    public void save(Account account) {
        list.add(account);
    }

    public void edit(int index, Account account) {
        list.set(index, account);
    }

    public void delete(int index) {
        list.remove(index);
    }
}
