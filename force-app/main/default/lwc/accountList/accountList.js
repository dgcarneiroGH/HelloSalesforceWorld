import { LightningElement, wire, track } from 'lwc';
import getAccounts from '@salesforce/apex/AccountController.getAccounts';

export default class AccountList extends LightningElement {
    @track accounts;
    @track filteredAccounts;
    @track error;
    filter = '';

    columns = [
        { label: 'Nombre', fieldName: 'Name' },
        { label: 'Número de Empleados', fieldName: 'NumberOfEmployees', type: 'number' },
        { label: 'Teléfono', fieldName: 'Phone', type: 'phone' },
        { label: 'Sitio Web', fieldName: 'Website', type: 'url' }
    ];

    @wire(getAccounts)
    wiredAccounts({ error, data }) {
        if (data) {
            this.accounts = data;
            this.filteredAccounts = data;
            this.error = undefined;
        } else if (error) {
            this.error = error;
            this.accounts = undefined;
            this.filteredAccounts = undefined;
        }
    }

    handleFilterChange(event) {
        this.filter = event.target.value.toLowerCase();
        this.filteredAccounts = this.accounts.filter(account =>
            account.Name.toLowerCase().includes(this.filter)
        );
    }
}