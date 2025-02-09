const cds = require('@sap/cds');

const { transporter } = require('./transporter');

class SpacefarerService extends cds.ApplicationService {
    init() {
        const { Spacefarers } = this.entities

        this.before('CREATE', 'Spacefarers', (req) => {
            this.validateSkills(req);
        })
        this.before('UPDATE', 'Spacefarers', (req) => {
            this.validateSkills(req);
        })
        this.after('CREATE', 'Spacefarers', (req) => {
            this.sendEmail();

        })
        return super.init()
    }

    validateSkills(req) {
        const navigationSkill = req.data.navigationSkill;
        const stardustCollection = req.data.stardustCollection;
        if (navigationSkill < 10) req.error(400, `Navigation skill value of ${navigationSkill} must be >= ${10}`);
        else if (stardustCollection < 10) req.error(400, `Stardust collection value of ${stardustCollection} must be >= ${10}`);
    }

    async sendEmail() {
        const info = await transporter.sendMail({
            from: "<jewell.gusikowski19@ethereal.email>",
            to: "kollorosa@gmail.com",
            subject: "Welcome to the Galactic Spacefarer LLC",
            html: "<b>Dear Spacefarer name</b>", // html body
        });

    }

}
module.exports = SpacefarerService
