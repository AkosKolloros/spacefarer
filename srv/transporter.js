const nodemailer = require('nodemailer');

const transporter = nodemailer.createTransport({
    host: 'smtp.ethereal.email',
    port: 587,
    secure: false,
    auth: {
        user: 'jewell.gusikowski19@ethereal.email',
        pass: 'dmPsHNGFmEs7fHxWnB'
    }
});
exports.transporter = transporter;
