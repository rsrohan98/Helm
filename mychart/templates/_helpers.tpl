{{- define "mychart.myexttempl"}}
timezz: "{{ now }}"
{{- end}}

{{- define "mychart.app" -}}
app_name: "{{ .Chart.Name }}"
app_version: "{{ .Chart.Version }}"
{{- end -}}