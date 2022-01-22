<template>
	<div class="q-pa-md">
		<q-table
		title="Users"
		:rows="users"
		:columns="columns"
		row-key="id"
		/>
	</div>
</template>

<script>
import {ref, computed} from 'vue'
import api from '../services/commons'

export default {
  	setup() {

		const state = ref({
			users: [],
			columns: [
				{ name: 'id', align: 'left', label: 'Id', field: 'id', sortable: true },
				{ name: 'name', align: 'left', label: 'Name', field: 'name', sortable: true },
				{ name: 'login', align: 'left', label: 'Login', field: 'login', sortable: true }
			]
		})

		api.get('/users').then((response) => {
			state.value.users = response.data
		})

      	return {
			users: computed(() => state.value.users),
			columns: computed(() => state.value.columns)
    	}
  	}
}
</script>
