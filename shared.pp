file { '/home/sales':
	ensure => 'directory',
	owner => 'root',
	group => 'sales',
	mode => '0070',
}
exec{'sales_inherit':
	command => "/bin/chmod g+s /home/sales",
}

file { '/home/managers':
	ensure => 'directory',
	owner => 'root',
	group => 'managers',
	mode => '0070',
}
exec{'managers_inherit':
	command => "/bin/chmod g+s /home/managers",
}

file { '/home/accounting':
	ensure => 'directory',
	owner => 'root',
	group => 'accounting',
	mode => '0070',
}
exec{'accounting_inherit':
	command => "/bin/chmod g+s /home/accounting",
}
