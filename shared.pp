file { '/home/sales':
	ensure => 'directory',
	owner => 'root',
	group => 'sales',
	mode => '2070',
}

file { '/home/managers':
	ensure => 'directory',
	owner => 'root',
	group => 'managers',
	mode => '2070',
}

file { '/home/accounting':
	ensure => 'directory',
	owner => 'root',
	group => 'accounting',
	mode => '2070',
}
