import {api} from '../boot/axios'

export default {
	get (resource, data = null) {
		return api.get(`http://127.0.0.1:3000${resource}`, { params: data })
	},
	getById (resource, id) {
		return api.get(`http://127.0.0.1:3000${resource}/${id}`)
	},
	create (resource, payload) {
		return api.post(`http://127.0.0.1:3000${resource}`, payload)
	},
	update (resource, payload) {
		return api.put(`http://127.0.0.1:3000${resource}/${payload.id}`, payload)
	},
	delete (resource, id) {
		return api.delete(`http://127.0.0.1:3000${resource}/${id}`)
	}
}