INSERT INTO users (username, email, password_hash)
VALUES (
	'brunomartins7', 
	'brunooliveiramartins7@gmail.com',
	'$2b$12$KbQiFJSovxZlFq3yHybN9upSXieK0oEF/t2WmnCkVQCPJqW92PKJa')
RETURNING id;