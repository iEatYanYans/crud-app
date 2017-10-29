
INSERT INTO client (
	company_name,
	url,
	phone_number,
	street_address,
	city,
	state,
	zip_code 
) VALUES (
	'Company A',
	'www.companya.com',
	'6171112222',
	'123 Fake St.',
	'Cambridge',
	'MA',
	'12345'
), (
	'Company b',
	'www.companyb.com',
	'6171112222',
	'123 Fake St.',
	'Cambridge',
	'MA',
	'12345'
), (
	'Company C',
	'www.companyc.com',
	'6171112222',
	'123 Fake St.',
	'Cambridge',
	'MA',
	'12345'
);


INSERT INTO person (
    first_name,
    last_name,
    email_address,
    street_address,
    city,
    state,
    zip_code,
    client_id
) VALUES (
    'John',
    'Smith',
    'fake1@aquent.com',
    '123 Any St.',
    'Asheville',
    'NC',
    '28801',
    '1'
), (
    'John',
    'Smith',
    'fake1@aquent.com',
    '123 Any St.',
    'Asheville',
    'NC',
    '28801',
    '2'
), (
    'Jane',
    'Smith',
    'fake2@aquent.com',
    '123 Any St.',
    'Asheville',
    'NC',
    '28801',
    '2'
);
