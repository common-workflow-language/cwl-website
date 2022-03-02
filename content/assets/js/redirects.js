'use strict';

// Get the final portion of the url
let anchor_path = (window.location.hash).replace('/', '').toLowerCase();
let redirects = {
  // Keys must be lowercase, no slashes
  // Values with anchor links (e.g. /about/#vision) must not contain trailing slash

  // About
  '#mission-of-cwl': '/about/#mission',
  '#vision': '/about/#vision',
  '#vision-for-cwl': '/about/#vision',

  // Contributors
  '#cwl_advisors': '/contributors/#cwl-advisors',
  '#individual_contributors': '/contributors/#individual-contributors',
  '#participating_organizations': '/contributors/#participating-organizations',

  // External
  '#cwl-conference': 'https://cwl.discourse.group/t/2022-cwl-conference-feb-28-mar-4-2022/519/',

  // Getting Started
  '#getting-started': '/getting-started/',
  '#getting_started': '/getting-started/',

  // Governance
  '#contributers_and_governance': '/governance/',
  '#contributors-and-governance': '/governance/',
  '#cwl_leadership_team': '/governance/#cwl-leadership-team',
  '#user-content-cwl-leadership-team': '/governance/#cwl-leadership-team',

  // Implementations
  '#implementations': '/implementations/','#in_production': '/implementations/#in-production',
  '#partial_implementations': '/implementations/#partial-implementations',

  // Other
  '#code_of_conduct': '/code-of-conduct/',
  '#specification': '/specification/',

  // Projects
  '#projects': '/projects/',
  '#projects_the_cwl_community_is_participating_in': '/projects/',

  // Repositories
  '#repos': '/repos/',
  '#repositories_of_cwl_tools_and_workflows': '/repos/',

  // Support
  '#support': '/community/',
  '#support,_community_and_contributing': '/community/',

  // Tools
  '#code_libraries': '/tools/#code-libraries',
  '#converters_and_code_generators': '/tools/#converters-and-code-generators',
  '#editors_and_viewers': '/tools/#editors-and-viewers',
  '#software': 'tools/',
  '#software_for_working_with_cwl': '/tools/',
  '#utilities': '/tools/#utilities',
};

if ( anchor_path in redirects ) {
  window.location = redirects[anchor_path];
}
