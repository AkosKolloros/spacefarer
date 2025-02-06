const cds = require('@sap/cds')

class SpacefarerService extends cds.ApplicationService {
    init() {
        const { Spacefarers } = this.entities

        this.before('CREATE', 'Spacefarers', (req) => {
            this.validateSkills(req);
        })
        this.before('UPDATE', 'Spacefarers', (req) => {
            this.validateSkills(req);
        })
        //this.after('CREATE', 'Spacefarers', (req) => { console.log("email here") })
        return super.init()
    }

    validateSkills(req) {
        const navigationSkill = req.data.navigationSkill;
        const stardustCollection = req.data.stardustCollection;
        if (navigationSkill < 10) req.error(400, `Navigation skill value of ${navigationSkill} must be >= ${10}`);
        else if (stardustCollection < 10) req.error(400, `Stardust collection value of ${stardustCollection} must be >= ${10}`);
    }
}
module.exports = SpacefarerService
