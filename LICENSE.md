# TheDEvorger UNIVERSAL PROPRIETARY SOFTWARE LICENSE

## Version 1.3

**Effective Date:** 27 July 2026
**SPDX-License-Identifier:** `LicenseRef-TheDEvorger-UPSL-1.3`

Copyright © 2026–present TheDEvorger.
All Rights Reserved.

---

## IMPORTANT NOTICE

The Covered Materials are proprietary.

The availability of source code, binaries, documentation, downloadable packages, hosted functionality, demonstrations, previews, or public repositories does not make the Covered Materials open-source, free software, public-domain material, or freely reusable material.

No rights are granted except those expressly and unambiguously granted by this License or required by mandatory applicable law.

All rights not expressly granted are reserved by the Licensor.

This License governs intellectual property and usage rights relating to the Covered Materials. It does not replace any separately applicable privacy policy, subscription agreement, service terms, commercial agreement, contributor agreement, or third-party license.

## AŁEK’RYŦHÆ CORE AND `.alek` APPLICATION ARCHITECTURE

Certain Covered Materials are organized as a shared runtime architecture consisting of **Ałek’ryŧhæ Core** and one or more **`.alek` Applications**.

Ałek’ryŧhæ Core is the central runtime that may load, validate, host, display, execute, manage, and provide shared services to `.alek` Applications.

A `.alek` Application is a distinct application package intended to be opened and run through a compatible version of Ałek’ryŧhæ Core. Unless the Licensor expressly states otherwise, a `.alek` Application is not a standalone executable and does not contain an independent replacement for the Core.

The Core and each `.alek` Application may be developed, versioned, updated, licensed, published, or withdrawn separately. Their technical separation does not grant permission to separate, extract, repackage, redistribute, replace, imitate, or independently exploit either component.

Where this License is included with or expressly applied to the Core, a `.alek` Application, or a distribution containing both, the applicable component is a Covered Material under this License.

---

# 1. PARTIES

## 1.1 Licensor

“Licensor” means the natural person who publishes under the pseudonym “TheDEvorger”, together with any lawful successor, assignee, or entity expressly designated in writing by that person as the rights holder of the applicable Covered Materials. The use of a pseudonym does not waive, transfer, or limit any right of the Licensor.

Licensing and legal contact:

**[TheDEvorger.alekrythae.dev@gmail.com](mailto:TheDEvorger.alekrythae.dev@gmail.com)**

## 1.2 You

“You” and “Your” mean the individual or legal entity accessing, obtaining, installing, executing, compiling, testing, modifying, using, or otherwise interacting with the Covered Materials.

Where an employee, contractor, representative, automated agent, artificial intelligence system, crawler, scraper, bot, or other intermediary acts on behalf of a person or entity, “You” includes the person or entity that operates, controls, deploys, instructs, authorizes, or benefits from that activity.

## 1.3 Licensor’s Own Use

Restrictions imposed on “You” do not restrict the Licensor’s own use, licensing, commercialization, modification, distribution, or exploitation of the Covered Materials.

---

# 2. DEFINITIONS

## 2.1 Covered Materials

“Covered Materials” means any material distributed, published, supplied, made accessible, or expressly identified by the Licensor as being governed by this License.

Covered Materials include, where applicable:

* source code;
* object code;
* compiled code;
* executable files;
* applications;
* shared software runtimes and core runtime components;
* Ałek’ryŧhæ Core releases and components;
* `.alek` Applications;
* `.alek` Application Packages;
* application manifests, package definitions, schemas, metadata, resources, and configuration contained in or distributed with `.alek` Applications;
* loaders, launchers, validators, interpreters, hosts, compatibility components, and runtime services used to open, validate, host, execute, manage, or support `.alek` Applications;
* programs;
* command-line tools;
* desktop software;
* mobile software;
* web software;
* server software;
* cloud software;
* games;
* game engines;
* software engines;
* frameworks;
* libraries;
* packages;
* modules;
* APIs;
* SDKs;
* plugins;
* extensions;
* themes;
* scripts;
* macros;
* bots;
* automation systems;
* orchestration systems;
* firmware;
* embedded software;
* device software;
* drivers;
* operating system components;
* databases;
* database structures;
* schemas;
* data structures;
* configuration files;
* build systems;
* deployment systems;
* installation packages;
* containers;
* virtual machine images;
* update packages;
* patches;
* prototypes;
* previews;
* experimental versions;
* alpha versions;
* beta versions;
* release candidates;
* hosted interfaces;
* service clients;
* dashboards;
* user interfaces;
* workflows;
* algorithms as expressed in protectable code;
* software architecture as expressed in protectable material;
* documentation;
* manuals;
* specifications;
* diagrams;
* examples;
* templates;
* sample files;
* test files;
* benchmark files;
* icons;
* graphics;
* artwork;
* models;
* textures;
* animations;
* audio;
* music;
* sound effects;
* fonts where owned by the Licensor;
* branding elements;
* logos;
* names;
* slogans;
* metadata;
* updates;
* upgrades;
* modified versions;
* derivative versions;
* accompanying materials; 
* fictional universes;
* lore and world-building materials;
* stories, plots, narratives, and dialogue;
* fictional characters, creatures, races, species, and civilizations;
* factions, dynasties, organizations, and cultures;
* fictional histories, timelines, genealogies, and cosmologies;
* fictional languages, alphabets, terminology, and naming systems;
* maps, locations, environments, symbols, and heraldry;
* magic systems, power systems, fictional technologies, and rule systems;
* associated character designs, visual identities, and narrative assets; and
* protectable selections, arrangements, adaptations, and compilations of the foregoing.

Covered Materials apply whether the material is distributed as source code, binary code, an archive, an installer, a repository, a hosted service component, physical media, or any other format.

## 2.2 Ałek’ryŧhæ Core

“Ałek’ryŧhæ Core” or “Core” means the Licensor’s shared software runtime and its related components, including any launcher, host, loader, validator, interpreter, renderer, interface layer, storage layer, security component, media service, compatibility service, update component, and other shared functionality used to open, validate, host, display, execute, manage, or support `.alek` Applications.

A specific release of the Core may be identified by its version, repository, package, executable, installer, archive, or accompanying documentation.

## 2.3 `.alek` Application

“`.alek` Application” means an application, game, tool, editor, utility, experience, or other software product distributed by or on behalf of the Licensor, or expressly identified by the Licensor, as being intended to operate through Ałek’ryŧhæ Core and to be stored or distributed in the `.alek` format.

A `.alek` Application is a distinct Covered Material from the Core even where it depends upon the Core to function.

Unless the Licensor expressly states otherwise, a `.alek` Application:

* is not a standalone executable;
* does not grant ownership of or independent rights in the Core;
* may require a particular Core version;
* may use shared Core services;
* may contain its own application logic, interface definitions, resources, assets, metadata, configuration, and data structures; and
* may be updated, replaced, withdrawn, or licensed separately from the Core.

## 2.4 `.alek` Application Package

“`.alek` Application Package” means a file, package, archive, directory structure, or other technical container using or associated with the `.alek` filename extension or format and containing all or part of a `.alek` Application.

A `.alek` Application Package may include:

* manifests;
* application definitions;
* scripts;
* compiled components;
* resources;
* databases;
* schemas;
* configuration;
* metadata;
* icons;
* images;
* models;
* textures;
* audio;
* documentation;
* version information;
* compatibility information;
* integrity information; and
* other application-specific material.

The filename extension, abstract concept of an application package, and general concept of a shared runtime are not claimed as exclusive where they are not legally protectable. This does not limit rights in the Licensor’s protectable code, package implementation, schemas, manifests, structures, documentation, branding, assets, selection, arrangement, or other original expression.

## 2.5 Core–Application Architecture

“Core–Application Architecture” means the product architecture in which Ałek’ryŧhæ Core provides shared runtime functionality and one or more `.alek` Applications provide distinct application-specific functionality.

Under this architecture:

* the Core and each `.alek` Application are separate technical and licensing components;
* a `.alek` Application may depend upon the Core without becoming part of the Core;
* the Core may support multiple `.alek` Applications;
* possession of the Core does not grant rights to every `.alek` Application;
* possession of a `.alek` Application does not grant rights to modify, replace, redistribute, or independently exploit the Core;
* compatibility between versions is not guaranteed; and
* no right to create an alternative loader, host, runtime, compatibility layer, or substitute implementation is granted.

## 2.6 Software

“Software” means the programmatic and executable portions of the Covered Materials, including source code, object code, hosted software functionality, firmware, scripts, APIs, libraries, and related technical components.

## 2.7 Source-Available

“Source-Available” means that some or all source code may be publicly or privately viewable.

Source availability does not by itself grant permission to:

* use the source code for any purpose;
* modify the source code;
* distribute the source code;
* create derivative works;
* use the source code commercially;
* train artificial intelligence systems;
* create competing products; or
* exercise any copyright or proprietary right.

## 2.8 Authorized Device

“Authorized Device” means a device personally owned or controlled by You and used solely for permitted Personal Use.

A business, institutional, governmental, educational, client-owned, employer-owned, shared production, or commercially operated device is not an Authorized Device unless separately authorized in writing.

## 2.9 Personal Use

“Personal Use” means private use by a natural person:

* for personal evaluation;
* for personal learning;
* for personal entertainment;
* for private experimentation;
* without compensation;
* without business benefit;
* without professional benefit;
* without organizational benefit;
* without public distribution;
* without public deployment;
* without providing services to another person; and
* without Commercial Use or Production Use.

Personal Use does not include use on behalf of:

* an employer;
* a client;
* a customer;
* a company;
* a partnership;
* a nonprofit organization;
* an educational institution;
* a public institution;
* a government body;
* a professional association; or
* any other organization.

## 2.10 Commercial Use

“Commercial Use” means any activity that directly or indirectly:

* generates revenue;
* is intended to generate revenue;
* supports paid work;
* supports unpaid professional work;
* supports freelancing;
* supports consulting;
* supports employment;
* supports recruitment;
* supports a professional portfolio;
* supports a business;
* supports an organization;
* provides internal business value;
* reduces business costs;
* replaces a paid product or service;
* promotes a product, service, person, or organization;
* supports advertising;
* supports sponsorship;
* supports fundraising;
* supports investment;
* supports investor demonstrations;
* supports customer demonstrations;
* supports client demonstrations;
* supports enterprise evaluation;
* supports institutional research;
* supports commercial research;
* provides competitive advantage;
* is included in a monetized environment;
* is included in an advertisement-supported environment;
* is used in connection with a subscription;
* is offered through a marketplace; or
* creates financial, professional, reputational, operational, or organizational benefit.

Commercial Use includes internal business use even where no direct payment is received.

## 2.11 Production Use

“Production Use” means use in any real-world operational, organizational, public-facing, client-facing, customer-facing, externally accessible, mission-critical, commercial, institutional, or relied-upon environment.

Production Use includes:

* hosted deployments;
* SaaS deployments;
* business systems;
* public websites;
* public servers;
* customer applications;
* client deliverables;
* network services;
* organizational presentations;
* public demonstrations;
* commercial exhibitions;
* distributed applications;
* embedded devices;
* production automation;
* production databases;
* operational workflows; and
* systems relied upon by any person other than You for private Personal Use.

## 2.12 Modification

“Modification” means any change, adaptation, translation, port, conversion, extension, alteration, correction, customization, rearrangement, transformation, or addition to the Covered Materials.

## 2.13 Derivative Material

“Derivative Material” means any protectable material substantially based upon, adapted from, translated from, reconstructed from, or incorporating protectable expression from the Covered Materials.

Derivative Material includes, where legally applicable:

* modified programs;
* ports;
* remakes;
* clones;
* adaptations;
* translations;
* converted versions;
* reimplementations copying protectable expression;
* modified interfaces;
* derivative engines;
* derivative frameworks;
* derivative libraries;
* derivative plugins;
* derivative themes;
* derivative documentation;
* derivative visual assets; and
* unauthorized compatible substitutes created through copying.

Independently developed material that does not copy protectable expression is not Derivative Material merely because it performs a similar general function.

## 2.14 Distribution

“Distribution” means making a copy or access to a copy available to another person or entity by any means.

Distribution includes:

* uploading;
* publishing;
* sharing;
* transferring;
* transmitting;
* selling;
* donating;
* gifting;
* lending;
* renting;
* leasing;
* sublicensing;
* mirroring;
* rehosting;
* bundling;
* embedding;
* preinstalling;
* broadcasting;
* publicly displaying;
* making available for download;
* making available through a network;
* providing remote access; and
* including the Covered Materials in another product or archive.

## 2.15 AI System

“AI System” means any artificial intelligence, machine learning, statistical learning, automated inference, generative, retrieval, classification, recommendation, neural, synthetic media, or automated decision system.

AI Systems include:

* large language models;
* foundation models;
* generative models;
* diffusion models;
* multimodal models;
* neural networks;
* coding assistants;
* copilots;
* autonomous agents;
* embedding models;
* vector databases;
* retrieval systems;
* Retrieval-Augmented Generation systems;
* recommendation systems;
* evaluation systems;
* model-training systems;
* fine-tuning systems;
* synthetic data systems; and
* systems designed to reproduce, imitate, analyze, generate, reconstruct, or automate software or creative materials.

## 2.16 Automated Processing

“Automated Processing” means automated or substantially automated:

* accessing;
* scraping;
* crawling;
* downloading;
* copying;
* parsing;
* extracting;
* indexing;
* tokenizing;
* embedding;
* vectorizing;
* classifying;
* summarizing;
* analyzing;
* transforming;
* storing;
* harvesting;
* reconstructing; or
* ingesting Covered Materials.

## 2.17 Hosting Platform

“Hosting Platform” means GitHub or another third-party platform through which the Licensor intentionally publishes or distributes Covered Materials.

## 2.18 Third-Party Materials

“Third-Party Materials” means software, code, libraries, frameworks, packages, fonts, assets, services, documentation, or other material owned or licensed by someone other than the Licensor.

---

# 3. APPLICATION OF THIS LICENSE

## 3.1 Covered Repositories and Packages

This License applies to Covered Materials where:

* this License is included in the repository, package, archive, installer, distribution, directory, Core release, or `.alek` Application Package;
* a source file, manifest, package definition, or metadata record identifies this License;
* project documentation states that this License applies;
* a download page states that this License applies; or
* the Licensor expressly identifies the material as governed by this License.

## 3.2 Universal Reuse

The Licensor may reuse this License for multiple unrelated programs and projects.

The presence of this License in one project does not automatically apply it to a different project unless the License is also included in or expressly applied to that project.

## 3.3 Separately Licensed Files

A file or component containing a different express license notice is governed by that separate license to the extent of any conflict.

## 3.4 Additional Product Terms

A product may include additional terms concerning:

* subscriptions;
* payments;
* hosted services;
* accounts;
* privacy;
* telemetry;
* data processing;
* acceptable use;
* service availability;
* support;
* updates;
* compatibility;
* Core versions;
* `.alek` Application versions;
* commercial licensing; or
* product-specific restrictions.

Where additional terms validly apply, those additional terms supplement this License.

Where a separately signed commercial agreement conflicts with this License, the signed commercial agreement controls only within its express scope.

## 3.5 Core and `.alek` Application Scope

Where a distribution contains both Ałek’ryŧhæ Core and one or more `.alek` Applications, this License applies separately to each Covered Material unless a component contains a different express license notice.

Where the Core and a `.alek` Application are obtained separately, the right to possess or use one does not create an implied right to obtain, copy, modify, distribute, host, convert, or exploit the other.

A compatibility statement, file association, package extension, manifest entry, loader relationship, or technical dependency does not merge ownership of the Core and the `.alek` Application and does not create any implied license.

## 3.6 Product Identity and Terminology

References to “Ałek’ryŧhæ Core”, “Core”, “`.alek` Application”, “`.alek` Application Package”, or related project terminology identify the applicable product architecture. Such references do not grant a trademark, compatibility, implementation, distribution, or derivative-work license.

---

# 4. ACCEPTANCE

Mere viewing of a public repository through a Hosting Platform does not by itself constitute acceptance of this License beyond rights and obligations imposed by applicable law or the Hosting Platform’s terms.

By exercising any permission granted under this License, including by downloading, cloning, installing, importing, opening, loading, validating, compiling, executing, modifying, or retaining the Covered Materials, including the Core or a `.alek` Application, You accept and agree to comply with this License.

Where the Software presents this License through an installer, first-run screen, account flow, download flow, or other interface and requests affirmative assent, selecting an acceptance control or otherwise affirmatively assenting constitutes acceptance of this License.

If You do not accept this License, You must not exercise any permission granted by it.

Nothing in this Section limits the Licensor’s copyright or other rights against conduct that does not require contractual acceptance.

---

# 5. OWNERSHIP

## 5.1 Retained Ownership

The Covered Materials remain the exclusive property of the Licensor or the applicable third-party rights holder.

## 5.2 No Sale

Downloading, installing, purchasing access to, receiving, or possessing a copy does not constitute a sale or transfer of intellectual property ownership.

## 5.3 Rights Retained

The Licensor retains all applicable:

* copyright rights;
* reproduction rights;
* adaptation rights;
* translation rights;
* distribution rights;
* publication rights;
* communication rights;
* performance rights;
* display rights;
* database rights;
* design rights;
* trademark rights;
* service mark rights;
* trade dress rights;
* patent rights;
* moral rights;
* neighboring rights;
* contractual rights; and
* other intellectual property and proprietary rights.

## 5.4 No Implied License

No right is granted by:

* implication;
* estoppel;
* public accessibility;
* source availability;
* technical accessibility;
* prior tolerance;
* custom;
* silence;
* failure to enforce;
* absence of encryption;
* absence of access controls;
* absence of a watermark;
* absence of a robots directive; or
* publication through a public repository.

## 5.5 General Ideas

This License does not claim ownership over general ideas, abstract concepts, facts, mathematical principles, general methods, programming languages, filename extensions in the abstract, the general idea of a shared runtime, the general idea of an application package, or elements that are not legally protectable. Rights are reserved in the Licensor’s protectable implementation, code, package structures, schemas, manifests, documentation, branding, assets, selection, arrangement, and original expression.

---

# 6. LIMITED PERSONAL LICENSE

Subject to continuous compliance with this License, the Licensor grants You a limited, non-exclusive, worldwide, royalty-free, non-transferable, non-assignable, non-sublicensable license, terminable as provided in this License, solely to:

1. view the Covered Materials;
2. download one working copy of each lawfully supplied Covered Material for Personal Use;
3. create a reasonable number of private backup copies;
4. install Ałek’ryŧhæ Core on Authorized Devices;
5. retain lawfully supplied `.alek` Application Packages on Authorized Devices;
6. associate `.alek` Application Packages with a compatible installed copy of the Core;
7. import, open, load, validate, and execute `.alek` Applications locally through a compatible version of the Core;
8. execute other Software locally on Authorized Devices where such execution is expressly supported;
9. compile source code locally where source code is provided;
10. study source code, manifests, package definitions, and documentation privately for personal education;
11. test Core and `.alek` Application functionality privately;
12. evaluate the Covered Materials for possible acquisition of a separate commercial license;
13. make private local Modifications solely for personal learning, debugging, accessibility, compatibility testing, or experimentation, subject to Section 11; and
14. create independent user content through the Software as permitted by Section 20.

The permission to open or execute a `.alek` Application through the Core does not grant permission to extract, convert, republish, distribute, host, clone, replace, or create an alternative runtime for that Application.

No other rights are granted.

---

# 7. CONDITIONS OF PERMITTED USE

Every permission granted under Section 6 is conditioned upon all of the following:

1. use remains strictly Personal Use;
2. use occurs only on Authorized Devices;
3. the Core and every `.alek` Application used by You were lawfully obtained;
4. `.alek` Applications are opened only through authorized Core functionality unless the Licensor expressly authorizes another method;
5. no Commercial Use occurs;
6. no Production Use occurs;
7. no Distribution occurs;
8. no public hosting occurs;
9. no service is provided to another person;
10. no unauthorized loader, host, launcher, runtime, compatibility layer, converter, unpacker, or substitute is created or used;
11. no AI System is trained, developed, evaluated, or improved;
12. no prohibited Automated Processing occurs;
13. no security, validation, signature, integrity, compatibility, licensing, or technological protection is circumvented;
14. all legal and proprietary notices remain intact;
15. Third-Party Materials are used in compliance with their own licenses;
16. no false claim of ownership or authorship is made;
17. no false affiliation or endorsement is implied;
18. no modified Core, `.alek` Application, or `.alek` Application Package is represented as official;
19. no use prohibited elsewhere in this License occurs.

A breach of any condition automatically terminates the affected permissions.

---

# 8. HOSTING PLATFORM RIGHTS

## 8.1 Platform Operator

Where the Licensor intentionally uploads Covered Materials to a Hosting Platform, the Hosting Platform may receive rights directly from the Licensor under that platform’s terms.

Those rights may include rights necessary to:

* host;
* store;
* archive;
* back up;
* parse;
* display;
* index;
* copy;
* search;
* analyze;
* secure;
* provide platform features;
* provide forking functionality;
* develop platform services; and
* perform platform or affiliate AI-related processing.

This License does not revoke, narrow, expand, or contradict rights separately granted by the Licensor to the Hosting Platform.

## 8.2 Platform Users

Users of a public Hosting Platform may receive limited rights directly under the Hosting Platform’s terms to:

* view public materials;
* display public materials through the platform; and
* create forks through official platform functionality.

Any such right:

* exists only within the applicable platform terms;
* does not transfer ownership;
* does not authorize off-platform redistribution;
* does not authorize Commercial Use;
* does not authorize Production Use;
* does not authorize sublicensing;
* does not authorize sale;
* does not authorize independent AI training;
* does not authorize creation of a competing product; and
* does not create rights beyond those separately granted by the Hosting Platform.

## 8.3 Official Forks

A fork created solely through official Hosting Platform functionality may remain available to the extent required or permitted by the Hosting Platform’s terms.

Exporting, commercializing, distributing, rehosting, deploying, or otherwise exploiting the fork remains subject to this License and applicable law.

## 8.4 No Public-Access Defense

Public accessibility does not grant independent permission for:

* scraping;
* bulk downloading;
* mirroring;
* dataset creation;
* AI training;
* commercial exploitation;
* off-platform redistribution; or
* creation of Derivative Materials.

---

# 9. COMMERCIAL, PROFESSIONAL, AND ORGANIZATIONAL USE

Unless separately authorized in writing, You may not:

1. use the Covered Materials commercially;
2. use the Covered Materials for paid work;
3. use the Covered Materials for unpaid professional work;
4. use the Covered Materials for a client;
5. use the Covered Materials for an employer;
6. use the Covered Materials within a company;
7. use the Covered Materials within an organization;
8. use the Covered Materials within an educational institution;
9. use the Covered Materials within a nonprofit organization;
10. use the Covered Materials within a government body;
11. use the Covered Materials for internal business operations;
12. use the Covered Materials for freelancing;
13. use the Covered Materials for consulting;
14. use the Covered Materials in a professional portfolio;
15. use the Covered Materials in recruitment;
16. use the Covered Materials in an investor presentation;
17. use the Covered Materials in a customer demonstration;
18. use the Covered Materials in a client demonstration;
19. use the Covered Materials in an enterprise evaluation;
20. use the Covered Materials in commercial research;
21. use the Covered Materials to reduce organizational costs;
22. use the Covered Materials to replace a paid product or service;
23. use the Covered Materials in advertising;
24. use the Covered Materials in sponsorship;
25. use the Covered Materials in promotion;
26. monetize the Covered Materials;
27. charge for access to the Covered Materials;
28. sell services based on the Covered Materials;
29. provide installation or customization services involving the Covered Materials;
30. operate a hosted or SaaS deployment;
31. deploy the Covered Materials in production;
32. bundle the Covered Materials with another product; or
33. otherwise obtain financial, professional, competitive, reputational, or organizational benefit from the Covered Materials.

Commercial licensing may be available solely at the Licensor’s discretion.

---

# 10. COPYING AND DISTRIBUTION

Except as expressly permitted by this License or mandatory law, You may not:

* copy the Covered Materials;
* redistribute the Covered Materials;
* publish the Covered Materials;
* mirror the Covered Materials;
* rehost the Covered Materials;
* upload the Covered Materials to another service;
* upload the Covered Materials to another repository;
* share the Covered Materials with another person;
* transmit the Covered Materials;
* sell the Covered Materials;
* rent the Covered Materials;
* lease the Covered Materials;
* lend the Covered Materials;
* donate the Covered Materials;
* sublicense the Covered Materials;
* transfer the Covered Materials;
* include the Covered Materials in an archive;
* include the Covered Materials in a software bundle;
* include the Covered Materials in an installer;
* include the Covered Materials in a container;
* include the Covered Materials in a virtual machine image;
* include the Covered Materials in a device;
* include the Covered Materials in another application;
* make the Covered Materials accessible through a network;
* provide remote access to the Covered Materials;
* distribute compiled versions;
* distribute modified versions;
* distribute unmodified versions;
* distribute Ałek’ryŧhæ Core separately or together with another product;
* distribute a `.alek` Application or `.alek` Application Package separately or together with another product;
* extract a `.alek` Application from its authorized package for distribution;
* repackage, rename, convert, wrap, embed, or rebundle a `.alek` Application for distribution;
* convert a `.alek` Application into an executable, installer, library, plugin, archive, container, or other distributable form;
* create or distribute an unofficial Core-and-application bundle;
* create or distribute an unofficial `.alek` application catalog, repository, marketplace, mirror, or download source; or
* create an unofficial download source.

Private backup copies permitted under Section 6 are not Distribution provided they remain inaccessible to other persons.

Transferring user-created content does not authorize transfer of any Core component, `.alek` Application, `.alek` Application Package, proprietary template, embedded asset, or other Covered Material contained in or required by that content.

---

# 11. MODIFICATIONS AND DERIVATIVE MATERIALS

## 11.1 Private Local Modifications

You may create private local Modifications solely for permitted Personal Use.

This limited permission may include private local changes to the Core, a `.alek` Application, or a `.alek` Application Package only where the applicable material is lawfully supplied in a form that permits such modification and no protection is circumvented.

## 11.2 Restrictions on Modified Copies

Modified copies:

* remain subject to this License;
* must retain all notices;
* may not be distributed;
* may not be published;
* may not be uploaded;
* may not be hosted;
* may not be sold;
* may not be sublicensed;
* may not be used commercially;
* may not be used in production;
* may not be represented as official;
* may not be used to provide services to another person;
* may not be used to create an alternative Core, loader, host, runtime, or compatibility layer; and
* may not use the Licensor’s branding in a misleading manner.

## 11.3 Prohibited Derivative Activities

You may not create, distribute, publish, commercialize, or provide:

* clones;
* remakes;
* unauthorized ports;
* competing products;
* substitute products;
* derivative engines;
* derivative frameworks;
* derivative libraries;
* derivative applications;
* unauthorized Core implementations;
* unauthorized `.alek` loaders;
* unauthorized `.alek` launchers;
* unauthorized `.alek` runtimes;
* unauthorized `.alek` interpreters;
* unauthorized `.alek` compatibility layers;
* unauthorized `.alek` converters;
* unauthorized `.alek` package editors based on copied protectable implementation;
* unauthorized integrations;
* unauthorized plugins;
* unauthorized extensions;
* unauthorized themes;
* modified installers;
* modified distributions;
* fan distributions;
* white-label versions;
* reskinned versions;
* reconstructed versions; or
* products substantially copying protectable expression.

## 11.4 Core and `.alek` Application Separation

You may not, except where mandatory law expressly requires otherwise:

* remove a `.alek` Application’s dependency on the Core;
* convert a `.alek` Application into a standalone program;
* embed all or part of the Core into a `.alek` Application or another product;
* extract shared Core functionality for reuse elsewhere;
* transplant application-specific logic, assets, schemas, manifests, or resources into another product;
* replace the Core with an unauthorized runtime;
* cause an unauthorized runtime to represent itself as Ałek’ryŧhæ Core;
* cause an unauthorized package to represent itself as an official `.alek` Application; or
* use compatibility as a pretext to copy protectable implementation details.

## 11.5 Independent Development

Nothing in this License prohibits genuinely independent development that:

* does not copy protectable expression;
* does not use unlawfully obtained information;
* does not violate this License;
* does not misuse the Licensor’s branding;
* does not incorporate the Covered Materials;
* does not circumvent technical protections; and
* does not represent an unofficial product as compatible, endorsed, certified, or official without authorization.

Functional similarity, use of a general application-package concept, or use of a filename extension alone does not make independently created material Derivative Material where protectable expression has not been copied and no other right has been violated.

---

# 12. ARTIFICIAL INTELLIGENCE AND MACHINE LEARNING

## 12.1 General Restriction

Except for rights separately granted directly by the Licensor to a Hosting Platform, You may not use the Covered Materials, directly or indirectly, for:

* AI training;
* machine learning training;
* pre-training;
* fine-tuning;
* reinforcement learning;
* preference optimization;
* model alignment;
* model evaluation;
* benchmarking;
* validation;
* testing;
* model distillation;
* model inversion;
* synthetic data generation;
* dataset creation;
* dataset enrichment;
* corpus creation;
* embedding generation;
* vectorization;
* semantic indexing;
* retrieval database creation;
* Retrieval-Augmented Generation;
* automated code generation;
* coding assistants;
* copilots;
* autonomous agents;
* generative design;
* similarity analysis intended to reproduce functionality;
* automated reconstruction;
* AI-assisted cloning;
* AI-assisted derivative development; or
* development or improvement of an AI System.

## 12.2 Prohibited Model Inputs

You may not provide the Covered Materials as:

* model prompts;
* chat attachments;
* system instructions;
* context windows;
* agent memory;
* knowledge-base documents;
* retrieval documents;
* training examples;
* evaluation examples;
* code assistant context;
* fine-tuning data;
* model input;
* dataset content; or
* machine-readable corpora.

## 12.3 Transformation Does Not Avoid the Restriction

The restrictions continue to apply where Covered Materials are:

* paraphrased;
* translated;
* summarized;
* reformatted;
* compressed;
* encrypted;
* obfuscated;
* fragmented;
* tokenized;
* embedded;
* vectorized;
* converted into screenshots;
* converted into audio;
* converted into pseudocode;
* reconstructed;
* mixed with other materials; or
* processed through an intermediary.

## 12.4 Local Non-AI Development Tools

Ordinary local tools necessary for permitted Personal Use are allowed, including:

* compilers;
* linkers;
* debuggers;
* editors;
* formatters;
* local static analyzers;
* local build systems;
* local dependency scanners; and
* local test tools,

provided that:

* no external AI provider receives the Covered Materials;
* no model is trained or improved;
* no dataset is created;
* no embedding database is created;
* no third party retains the Covered Materials;
* processing remains local; and
* no Commercial Use occurs.

---

# 13. AUTOMATED ACCESS AND DATA MINING

Unless separately authorized in writing, You may not use:

* crawlers;
* scrapers;
* spiders;
* bots;
* automated browsers;
* API harvesters;
* repository harvesters;
* bulk downloaders;
* automated indexing tools;
* corpus collectors;
* data extraction systems; or
* similar technology

to access, collect, copy, process, analyze, store, or extract Covered Materials.

This restriction does not prohibit:

1. normal functionality performed by the Hosting Platform under rights directly granted to it;
2. local build tools strictly necessary for permitted Personal Use; or
3. activity that mandatory law expressly permits and does not allow to be contractually restricted.

---

# 14. REVERSE ENGINEERING AND TECHNICAL RESTRICTIONS

Except to the extent mandatory law expressly provides otherwise, You may not:

* reverse engineer the Software;
* decompile the Software;
* disassemble the Software;
* decode the Software;
* reconstruct source code from binaries;
* unpack, decode, decrypt, deobfuscate, or reconstruct a `.alek` Application Package except where expressly permitted;
* convert a `.alek` Application into another executable or package format;
* create an unauthorized loader, launcher, host, runtime, interpreter, emulator, or compatibility layer for `.alek` Applications;
* bypass Core version checks, package validation, application validation, signatures, manifests, integrity checks, or compatibility checks;
* derive proprietary implementation details;
* extract protected resources;
* extract Core components, application logic, manifests, schemas, assets, or other protected material from a `.alek` Application Package for reuse;
* bypass license checks;
* bypass activation systems;
* bypass access controls;
* circumvent technological protection measures;
* disable integrity checks;
* defeat security systems;
* remove watermarking;
* remove provenance information;
* remove license notices;
* remove copyright notices;
* probe hosted infrastructure without authorization;
* access non-public systems;
* exploit vulnerabilities;
* publish exploit code relating specifically to the Software without authorization; or
* use technical analysis to create a competing or substitute product.

Private, non-destructive analysis solely to identify and confidentially report a security vulnerability to the Licensor is permitted where:

* no unauthorized data is accessed;
* no service is disrupted;
* no person is harmed;
* no vulnerability is exploited;
* no information is publicly disclosed without authorization; and
* applicable law is followed.

---

# 15. APIs, NETWORK ACCESS, AND HOSTED SERVICES

## 15.1 No Unauthorized API Use

You may not access or use an API except through methods, credentials, limits, and purposes expressly authorized by the Licensor.

## 15.2 No Service Replication

You may not:

* proxy a hosted service;
* resell access;
* share accounts;
* share credentials;
* create an unofficial client intended to bypass restrictions;
* reproduce hosted functionality as a competing service;
* automate access beyond documented limits;
* circumvent rate limits;
* bypass authentication;
* scrape service output; or
* provide service access to third parties.

## 15.3 Core and `.alek` Runtime Access

You may not:

* automate the loading or execution of `.alek` Applications beyond expressly supported functionality;
* invoke undocumented Core interfaces to bypass product restrictions;
* create an unofficial client, loader, launcher, host, runtime, interpreter, emulator, converter, or compatibility layer for `.alek` Applications;
* use the Core as a service for third parties;
* expose Core functionality or `.alek` Applications through a network, API, remote desktop service, streaming service, hosted environment, or multi-user system; or
* use a `.alek` Application Package as an API, SDK, library, plugin, dataset, or reusable component unless expressly authorized.

## 15.4 Separate Service Terms

Hosted services may be subject to separate Terms of Service, Acceptable Use Policies, Privacy Policies, account rules, subscription conditions, and data-processing terms.

Where applicable, those terms supplement this License.

## 15.5 Service Availability

No right is granted to continued access, continued hosting, backward compatibility, Core compatibility, `.alek` Application compatibility, package-format compatibility, service availability, account availability, API availability, or continuation of any feature.

---

# 16. SECURITY AND INTEGRITY

You may not:

* introduce malware;
* introduce malicious code;
* interfere with operation;
* overload systems;
* gain unauthorized access;
* obtain another user’s data;
* evade access restrictions;
* falsify identity;
* falsify license status;
* disable security protections;
* manipulate integrity checks;
* use the Software for fraud;
* use the Software to violate privacy;
* use the Software to infringe rights; or
* use the Software for unlawful or harmful conduct.

The Licensor may suspend access, revoke credentials, block accounts, disable services, or take protective measures where reasonably necessary to protect users, systems, rights, or infrastructure.

---

# 17. BRANDING, TRADEMARKS, AND ATTRIBUTION

## 17.1 No Trademark License

No trademark, service mark, logo, trade dress, product name, company name, domain name, branding, merchandising, sponsorship, franchise, or endorsement license is granted.

## 17.2 Prohibited Branding Uses

You may not use the Licensor’s:

* name;
* pseudonym;
* project names;
* logos;
* icons;
* slogans;
* product identity;
* visual identity;
* trade dress; or
* distinctive branding

in a manner that suggests:

* affiliation;
* endorsement;
* sponsorship;
* partnership;
* certification;
* official status; or
* origin from the Licensor.

## 17.3 Nominative Reference

You may make a truthful and limited textual reference to the Software solely to identify it, provided that You:

* do not use logos;
* do not imply endorsement;
* do not imply affiliation;
* do not imply official status;
* do not create confusion; and
* comply with published branding guidance.

## 17.4 Preservation of Notices

You must preserve all:

* copyright notices;
* license notices;
* author notices;
* attribution notices;
* proprietary notices;
* SPDX identifiers;
* third-party notices;
* source headers; and
* ownership metadata.

---

# 18. PATENTS

No patent license is granted, whether expressly, implicitly, by exhaustion, estoppel, or otherwise, except to the minimum extent necessarily required to execute an unmodified copy solely for permitted Personal Use.

No patent right is granted for:

* modification;
* manufacture;
* distribution;
* commercialization;
* sale;
* importation;
* hosted deployment;
* production deployment;
* derivative implementation;
* competing products; or
* organizational use.

Nothing in this Section shall be interpreted as a representation or warranty that any patent exists, has been applied for, is valid, or is enforceable in relation to the Covered Materials.

---

# 19. FICTIONAL UNIVERSES, LORE, AND CREATIVE MATERIALS

## 19.1 Covered Creative Materials

For purposes of this Section, “Covered Creative Materials” include all protectable fictional, narrative, artistic, and world-building materials that are:

* included in the Covered Materials;
* distributed with the Covered Materials;
* incorporated into the Software or its documentation;
* published by the Licensor in connection with an applicable project; or
* expressly identified by the Licensor as governed by this License.

Covered Creative Materials may include:

* fictional universes;
* lore and world-building materials;
* stories, plots, narratives, scenes, and dialogue;
* fictional characters, creatures, races, species, and civilizations;
* factions, dynasties, organizations, religions, and cultures;
* fictional histories, timelines, genealogies, and cosmologies;
* fictional languages, alphabets, terminology, naming systems, and symbols;
* maps, locations, environments, architecture, heraldry, and geographical systems;
* magic systems, power systems, fictional technologies, and fictional rule systems;
* character designs, clothing designs, weapons, artifacts, vehicles, and visual identities;
* illustrations, concept art, models, textures, animations, audio, music, and narrative assets; and
* protectable selections, arrangements, relationships, adaptations, and compilations of the foregoing.

## 19.2 Ownership

All applicable intellectual property rights in the Covered Creative Materials remain exclusively owned by the Licensor or the applicable third-party rights holder.

No ownership, adaptation, publication, merchandising, franchise, trademark, or derivative-work right is transferred or granted except where expressly stated in a separate written agreement.

## 19.3 No Reproduction or Adaptation Rights

Unless separately authorized in writing by the Licensor, You may not:

* reproduce;
* copy;
* publish;
* redistribute;
* translate;
* adapt;
* alter;
* transform;
* dramatize;
* animate;
* illustrate;
* narrate;
* perform;
* publicly display;
* commercialize;
* merchandise;
* sublicense;
* incorporate into another work; or
* create Derivative Materials based upon

any Covered Creative Material.

Private viewing or study permitted elsewhere in this License does not grant a right to publish, share, adapt, or distribute the Covered Creative Materials.

## 19.4 Prohibited Uses

Without prior written permission, You may not use Covered Creative Materials, whether modified or unmodified, in:

* games;
* video games;
* tabletop games;
* role-playing systems;
* books;
* novels;
* stories;
* films;
* television productions;
* animations;
* comics;
* webcomics;
* podcasts;
* audiobooks;
* fan projects;
* fan fiction;
* wikis;
* encyclopedias;
* databases;
* archives;
* websites;
* applications;
* software;
* virtual worlds;
* metaverse environments;
* merchandise;
* clothing;
* advertisements;
* promotional materials;
* social media projects;
* crowdfunding campaigns;
* AI-generated works;
* AI prompts;
* AI datasets;
* training datasets;
* embedding databases;
* retrieval systems; or
* any public, professional, organizational, or commercial project.

## 19.5 Characters, Names, and Distinctive Elements

You may not use protectable characters, distinctive names, fictional terminology, symbols, designs, narrative relationships, or other recognizable project elements in a manner that:

* copies protected expression;
* creates confusion regarding origin;
* implies affiliation, approval, or endorsement;
* presents an unofficial work as official;
* exploits the reputation or goodwill of the Licensor; or
* functions as an unauthorized continuation, adaptation, remake, or substitute.

## 19.6 AI and Automated Uses

Covered Creative Materials may not be used, directly or indirectly, as:

* AI prompts;
* model context;
* training material;
* fine-tuning material;
* evaluation material;
* dataset content;
* embedding content;
* retrieval content;
* agent memory;
* reference material for automated generation; or
* input for systems intended to imitate, reconstruct, continue, reproduce, or derive substantially similar creative materials.

This restriction applies subject to the Hosting Platform provisions and mandatory-law exceptions stated elsewhere in this License.

## 19.7 General Ideas and Unprotectable Elements

Nothing in this Section claims exclusive ownership over general ideas, abstract concepts, themes, genres, historical facts, common storytelling devices, general methods, functional principles, or other elements that are not protectable under applicable law.

Copyright protection applies to original expression rather than an underlying idea alone.

## 19.8 Independent Creation

This Section does not prohibit genuinely independent creative works that:

* were created without copying protected expression from the Covered Creative Materials;
* do not reproduce distinctive characters, terminology, designs, narratives, or visual elements;
* do not incorporate the Covered Materials;
* do not misuse the Licensor’s names, brands, or distinctive project identity;
* do not imply affiliation or endorsement; and
* do not otherwise violate this License.

Similarity arising solely from general ideas, common themes, genre conventions, historical sources, or independently developed concepts does not by itself constitute a violation.

## 19.9 Third-Party Creative Materials

Creative materials owned by third parties remain governed by their respective licenses and rights.

Nothing in this Section grants the Licensor ownership over third-party material or overrides any separately applicable third-party license.

## 19.10 Separate Permissions

The Licensor may grant separate written permission for:

* fan works;
* translations;
* adaptations;
* publications;
* games;
* films;
* merchandise;
* public exhibitions;
* educational projects;
* commercial projects; or
* other uses of Covered Creative Materials.

No such permission exists until it is expressly provided in writing by the Licensor.


---

# 20. USER CONTENT AND SOFTWARE OUTPUT

## 20.1 User-Owned Content

The Licensor does not claim ownership of independently created content merely because that content is created, edited, displayed, stored, processed, or exported through the Software.

User-owned content may include independently created text, notes, project data, settings, records, worlds, maps, characters, media, configurations, or other material, provided that such content does not itself reproduce or incorporate Covered Materials.

## 20.2 Embedded Materials

You do not acquire ownership of Covered Materials included in or required by an output, including:

* templates;
* stock assets;
* sample assets;
* proprietary fonts;
* logos;
* icons;
* interface elements;
* code;
* Core components;
* `.alek` Application components;
* manifests;
* schemas;
* metadata;
* package structures;
* watermarks; or
* licensed content.

## 20.3 `.alek` Applications Are Not User Content

A `.alek` Application or `.alek` Application Package supplied by or on behalf of the Licensor is Covered Material and is not transformed into user-owned content merely because You:

* download it;
* install it;
* open it through the Core;
* configure it;
* store personal data in it;
* modify it privately;
* rename the file;
* copy it for backup;
* export data from it; or
* create content through it.

Ownership of user-created content does not include ownership of the Core, the `.alek` Application, its package, code, manifests, schemas, interface, templates, assets, metadata, or other Covered Materials.

## 20.4 User-Created Packages and Exports

Where the Software expressly supports creating or exporting a user project, package, document, or application-like file, Your rights in that output are limited to Your independently created content.

Unless separate product terms expressly authorize otherwise, such functionality does not grant permission to:

* distribute any Core component;
* distribute a Licensor-supplied `.alek` Application;
* use proprietary package implementation as a general-purpose application platform;
* create an unofficial commercial `.alek` ecosystem;
* represent a user-created package as an official `.alek` Application;
* use the Licensor’s branding;
* distribute proprietary templates, schemas, manifests, code, or assets; or
* bypass restrictions elsewhere in this License.

## 20.5 Output Restrictions

An output may not be distributed or used commercially where doing so would:

* distribute Covered Materials;
* reproduce proprietary templates;
* reproduce licensed assets;
* expose source code;
* expose Core or `.alek` Application implementation details;
* reproduce proprietary manifests, schemas, or package structures;
* bypass a product restriction;
* violate a third-party license;
* imply endorsement;
* infringe rights; or
* violate additional product terms.

## 20.6 Responsibility for User Content

You are solely responsible for ensuring that Your content:

* is lawful;
* does not infringe third-party rights;
* does not contain malware;
* does not violate privacy;
* does not violate confidentiality;
* does not violate applicable product terms;
* is compatible with the applicable Software version where required; and
* is properly backed up.

---

# 21. THIRD-PARTY MATERIALS

## 21.1 Separate Licenses

Third-Party Materials remain governed by their respective licenses.

## 21.2 No Override

This License does not:

* override a third-party license;
* remove rights granted by a third-party license;
* impose this License on independently licensed third-party material; or
* grant rights that the Licensor does not own.

## 21.3 Compliance

You are responsible for complying with all applicable third-party obligations.

## 21.4 Notices

A repository or distribution may include:

* `THIRD_PARTY_NOTICES.md`;
* package manifests;
* dependency manifests;
* notices;
* attribution files; or
* individual license files.

Those notices form part of the relevant compliance information.

## 21.5 No Third-Party Warranty

The Licensor does not warrant the continued:

* availability;
* compatibility;
* security;
* licensing;
* functionality; or
* support

of Third-Party Materials.

---

# 22. CONTRIBUTIONS

## 22.1 Submission

“Contribution” means code, documentation, artwork, translations, patches, suggestions, issue submissions, pull requests, designs, files, or other material intentionally submitted for possible inclusion in the Covered Materials.

## 22.2 Contribution License

By intentionally submitting a Contribution, You grant the Licensor a perpetual, irrevocable, worldwide, royalty-free, fully paid, non-exclusive, transferable, and sublicensable license to:

* use;
* reproduce;
* modify;
* adapt;
* translate;
* publish;
* distribute;
* communicate;
* display;
* perform;
* compile;
* combine;
* create derivative works from;
* commercialize;
* sublicense;
* relicense; and
* otherwise exploit

the Contribution for any lawful purpose and under any license terms.

## 22.3 Contributor Representations

You represent and warrant that:

* You created the Contribution or have sufficient rights to submit it;
* the Contribution does not infringe third-party rights;
* the Contribution does not contain confidential information;
* the Contribution does not contain unlawfully obtained material;
* the Contribution complies with applicable law;
* You have authority to grant the rights stated above; and
* any employer or other rights holder has authorized the submission where necessary.

## 22.4 Moral Rights

To the maximum extent permitted by applicable law, You consent to the Licensor’s modification, adaptation, combination, publication, and commercialization of the Contribution and agree not to assert moral rights against such permitted use.

Where moral rights cannot legally be waived, You grant every consent and permission lawfully available to enable the licensed uses.

## 22.5 No Obligation

The Licensor has no obligation to:

* accept;
* review;
* use;
* retain;
* publish;
* attribute;
* maintain;
* support;
* compensate; or
* respond to

a Contribution.

## 22.6 Separate Agreements

The Licensor may require a separate Contributor License Agreement or copyright assignment before accepting a Contribution.

A separate signed agreement controls within its express scope.

---

# 23. UPDATES, CHANGES, COMPATIBILITY, AND SUPPORT

## 23.1 No Support Obligation

The Licensor has no obligation to provide:

* technical support;
* maintenance;
* documentation;
* updates;
* upgrades;
* patches;
* compatibility;
* Core compatibility;
* `.alek` Application compatibility;
* backward compatibility;
* forward compatibility;
* migration tools;
* bug fixes;
* security fixes;
* migration assistance; or
* continued development.

## 23.2 Changes

The Licensor may:

* modify the Software;
* modify the Core;
* modify a `.alek` Application;
* remove features;
* add features;
* change system requirements;
* change package structures;
* change manifests;
* change schemas;
* change validation rules;
* change compatibility rules;
* require a different Core version for a `.alek` Application;
* require a different `.alek` Application version for a Core release;
* discontinue Core versions;
* discontinue `.alek` Applications;
* discontinue services;
* change APIs;
* change file formats;
* change pricing;
* change commercial licensing options; or
* publish future versions under different terms.

## 23.3 Compatibility

A `.alek` Application may operate only with specified Core versions. The Licensor does not guarantee that:

* every Core version will open every `.alek` Application;
* an older Core will open a newer `.alek` Application;
* a newer Core will open an older `.alek` Application;
* modified packages will remain compatible;
* third-party tools will remain compatible;
* compatibility will continue after an update; or
* a migration path will be provided.

You are responsible for preserving compatible copies, backups, and data where permitted.

## 23.4 License Version

A particular copy or release remains governed by the license version distributed with that copy or release unless You accept a later license or a separate agreement provides otherwise.

A Core release and a `.alek` Application release may be governed by different license versions where each release contains or identifies a different license.

## 23.5 No Retroactive Expansion

A new license version does not automatically grant additional rights to an earlier release.

## 23.6 No Retroactive Reduction of Valid Existing Permissions

A later license version does not retroactively reduce permissions validly exercised under an earlier version during full compliance, unless mandatory law or a separate accepted agreement provides otherwise.

---

# 24. HIGH-RISK AND RESTRICTED USES

Unless separately authorized in writing, the Covered Materials may not be used in connection with:

* weapons;
* military systems;
* autonomous weapons;
* targeting systems;
* surveillance systems;
* biometric surveillance;
* law-enforcement decision systems;
* aviation control;
* spacecraft control;
* nuclear systems;
* medical diagnosis;
* medical treatment;
* life-support systems;
* emergency response;
* critical infrastructure;
* power-grid control;
* transportation control;
* industrial safety systems;
* financial trading;
* credit decisions;
* insurance decisions;
* employment decisions;
* legal decisions;
* systems affecting fundamental rights;
* systems whose failure may cause death;
* systems whose failure may cause injury;
* systems whose failure may cause environmental harm;
* systems whose failure may cause substantial property damage; or
* any activity requiring fail-safe performance.

Governmental, public-sector, military, law-enforcement, intelligence, and critical-infrastructure use requires separate prior written authorization.

---

# 25. EXPORT CONTROL AND SANCTIONS

You must not export, re-export, transfer, provide, access, or use the Covered Materials in violation of:

* export-control laws;
* sanctions laws;
* embargoes;
* customs laws;
* international trade restrictions; or
* legally binding governmental orders.

You represent that You are legally permitted to receive and use the Covered Materials.

---

# 26. LEGALLY MANDATORY EXCEPTIONS

Nothing in this License prohibits conduct that:

1. mandatory applicable law expressly permits;
2. cannot legally be restricted by contract; and
3. is performed strictly within the limits of that mandatory exception.

Where applicable law permits limited:

* backup;
* observation;
* study;
* testing;
* correction;
* quotation;
* accessibility modification;
* interoperability analysis;
* decompilation;
* security research; or
* similar conduct,

You must:

* use only the minimum amount necessary;
* satisfy every legal condition;
* avoid unreasonable harm to the Licensor;
* avoid creating a competing product;
* avoid unnecessary disclosure;
* preserve required notices;
* avoid Distribution except where expressly required by law; and
* stop when the lawful purpose has been achieved.

This Section grants no voluntary permission broader than mandatory law.

---

# 27. TERMINATION

## 27.1 Automatic Termination

All permissions granted under this License terminate automatically and immediately upon breach.

No prior notice is required.

## 27.2 Consequences

Upon termination, You must immediately:

1. stop using the Covered Materials;
2. stop executing the Software;
3. stop compiling the Software;
4. stop accessing hosted functionality where access depends on this License;
5. delete downloaded copies;
6. delete modified copies;
7. delete private backup copies unless retention is legally required;
8. remove unauthorized hosted copies;
9. remove unauthorized distributed copies;
10. stop Commercial Use;
11. stop Production Use;
12. stop using the Licensor’s branding;
13. stop AI and Automated Processing;
14. delete unauthorized datasets;
15. delete unauthorized embeddings;
16. delete unauthorized indexes;
17. delete unauthorized model inputs;
18. delete unauthorized retrieval databases; and
19. delete unauthorized `.alek` Application Packages, converted packages, alternative loaders, launchers, runtimes, compatibility layers, and extracted Core or application components; and
20. cease every activity relying upon a terminated permission.

## 27.3 Reinstatement

Permissions may be reinstated only by express written confirmation from the Licensor.

Correction of a violation does not automatically reinstate rights.

## 27.4 Independent Platform Rights

Termination of this License does not automatically revoke rights independently granted under mandatory Hosting Platform terms.

The Licensor may separately remove a repository, issue takedown notices, request deletion, or exercise available platform remedies.

---

# 28. ENFORCEMENT

Unauthorized activity may cause irreparable harm for which monetary compensation alone may be inadequate.

To the extent permitted by law, the Licensor may seek:

* injunctive relief;
* preliminary relief;
* protective relief;
* cessation of infringement;
* prevention of threatened infringement;
* account suspension;
* repository removal;
* service takedown;
* removal of unauthorized copies;
* preservation of evidence;
* impoundment;
* destruction of infringing copies;
* actual damages;
* lost profits;
* unjust enrichment;
* statutory remedies where available;
* court costs;
* expert costs;
* reasonable legal expenses; and
* any other available remedy.

The Licensor may cooperate with:

* Hosting Platforms;
* internet service providers;
* marketplaces;
* payment processors;
* rights-enforcement services;
* security providers; and
* lawful authorities.

Nothing in this Section creates a remedy unavailable under applicable law.

---

# 29. DISCLAIMER OF WARRANTIES

TO THE MAXIMUM EXTENT PERMITTED BY APPLICABLE LAW, THE COVERED MATERIALS ARE PROVIDED:

* “AS IS”;
* “WITH ALL FAULTS”;
* “AS AVAILABLE”; AND
* WITHOUT WARRANTY OF ANY KIND.

THE LICENSOR DISCLAIMS ALL EXPRESS, IMPLIED, STATUTORY, AND OTHER WARRANTIES, INCLUDING WARRANTIES OF:

* MERCHANTABILITY;
* FITNESS FOR A PARTICULAR PURPOSE;
* TITLE;
* NON-INFRINGEMENT;
* ACCURACY;
* COMPLETENESS;
* RELIABILITY;
* SECURITY;
* AVAILABILITY;
* PERFORMANCE;
* COMPATIBILITY;
* ERROR-FREE OPERATION;
* UNINTERRUPTED OPERATION;
* DATA PRESERVATION;
* SUPPORT;
* MAINTENANCE;
* RESULTS;
* QUALITY; AND
* FITNESS FOR HIGH-RISK USE.

THE LICENSOR DOES NOT WARRANT THAT:

* THE SOFTWARE WILL MEET YOUR REQUIREMENTS;
* THE SOFTWARE WILL WORK ON YOUR DEVICE;
* THE SOFTWARE WILL REMAIN COMPATIBLE;
* ANY CORE VERSION WILL OPEN OR RUN ANY PARTICULAR `.alek` APPLICATION;
* A `.alek` APPLICATION WILL REMAIN COMPATIBLE WITH FUTURE OR PAST CORE VERSIONS;
* `.alek` APPLICATION PACKAGES WILL REMAIN READABLE, VALID, MIGRATABLE, OR SUPPORTED;
* DEFECTS WILL BE CORRECTED;
* THIRD-PARTY DEPENDENCIES WILL REMAIN AVAILABLE;
* SERVICES WILL REMAIN ONLINE;
* DATA WILL NOT BE LOST;
* SECURITY VULNERABILITIES DO NOT EXIST;
* OUTPUTS WILL BE ACCURATE; OR
* THE COVERED MATERIALS ARE SUITABLE FOR PRODUCTION USE.

You are solely responsible for:

* testing;
* backups;
* device security;
* data security;
* legal compliance;
* suitability;
* compatibility;
* selection of compatible Core and `.alek` Application versions;
* preservation of lawful backup copies and user data; and
* consequences of use.

---

# 30. LIMITATION OF LIABILITY

TO THE MAXIMUM EXTENT PERMITTED BY APPLICABLE LAW, THE LICENSOR SHALL NOT BE LIABLE FOR:

* DIRECT DAMAGES;
* INDIRECT DAMAGES;
* INCIDENTAL DAMAGES;
* CONSEQUENTIAL DAMAGES;
* SPECIAL DAMAGES;
* EXEMPLARY DAMAGES;
* PUNITIVE DAMAGES;
* LOSS OF DATA;
* LOSS OF PROFITS;
* LOSS OF REVENUE;
* LOSS OF BUSINESS;
* LOSS OF OPPORTUNITY;
* LOSS OF REPUTATION;
* BUSINESS INTERRUPTION;
* SYSTEM FAILURE;
* CORE OR `.alek` APPLICATION INCOMPATIBILITY;
* PACKAGE CORRUPTION, VALIDATION FAILURE, OR MIGRATION FAILURE;
* SECURITY INCIDENTS;
* THIRD-PARTY CLAIMS;
* COSTS OF SUBSTITUTE PRODUCTS OR SERVICES;
* DAMAGE TO DEVICES;
* DAMAGE TO NETWORKS;
* DAMAGE TO PROPERTY; OR
* DAMAGE ARISING FROM USE OR INABILITY TO USE THE COVERED MATERIALS.

This limitation applies regardless of:

* legal theory;
* foreseeability;
* notice of possible damage;
* failure of an essential remedy; or
* whether a claim arises in contract, tort, negligence, statute, strict liability, or otherwise.

Where liability cannot legally be excluded, the Licensor’s total aggregate liability shall not exceed the amount actually paid directly by You to the Licensor for the specific Covered Materials during the twelve months preceding the event giving rise to the claim.

Where You paid nothing, the contractual liability cap is zero, except where a zero cap is prohibited by mandatory law.

Nothing in this License excludes liability that cannot lawfully be excluded, including liability for intentional misconduct, fraud, gross negligence, death, or personal injury where applicable law prohibits such exclusion.

---

# 31. INDEMNIFICATION

To the maximum extent permitted by applicable law, You agree to defend, indemnify, and hold harmless the Licensor and lawful successors from claims, proceedings, losses, liabilities, damages, judgments, penalties, costs, and reasonable legal expenses arising from:

* Your breach of this License;
* Your unauthorized use;
* Your Commercial Use;
* Your Production Use;
* Your Distribution;
* Your Modifications;
* Your Derivative Materials;
* Your AI or Automated Processing;
* Your violation of third-party rights;
* Your violation of law;
* Your user content;
* Your deployment;
* Your security breach;
* Your false claim of affiliation; or
* harm caused by Your use of the Covered Materials.

The Licensor will provide reasonable notice of a covered claim where practicable.

This Section does not impose an indemnity prohibited by mandatory consumer or other applicable law.

---

# 32. GOVERNING LAW

This License and disputes arising from or relating to it shall be governed by the laws of the Republic of Türkiye.

Conflict-of-law principles that would require application of another jurisdiction’s law are excluded to the extent legally permitted.

Mandatory laws and international treaties binding upon Türkiye remain applicable.

---

# 33. JURISDICTION

Subject to mandatory consumer, procedural, and jurisdictional rules that cannot legally be waived, the courts and execution offices of Istanbul, Türkiye shall have exclusive jurisdiction over disputes arising from or relating to:

* this License;
* the Covered Materials;
* unauthorized use;
* infringement;
* Commercial Use;
* Distribution;
* AI use;
* contributions;
* branding; or
* separately granted permissions.

The Licensor may seek emergency, provisional, protective, injunctive, or enforcement relief in any competent jurisdiction where:

* infringement occurs;
* harm occurs;
* evidence is located;
* unauthorized copies are located; or
* the defendant or relevant assets are located.

---

# 34. LANGUAGE

The controlling version of this License is the English version.

Any translation is provided solely for convenience.

To the extent permitted by applicable law, the English version prevails where a translation differs or conflicts.

---

# 35. SEVERABILITY

If any provision is held invalid, illegal, or unenforceable:

1. the remaining provisions remain effective;
2. the affected provision shall be enforced to the maximum lawful extent;
3. a court may modify the provision only to the minimum extent necessary to make it enforceable; and
4. the modified provision should preserve the intended protection as closely as legally possible.

If modification is not legally possible, the invalid portion shall be severed.

---

# 36. NO WAIVER

Failure or delay by the Licensor to enforce a right does not waive that right.

A waiver is valid only if expressly made in writing by the Licensor.

A waiver concerning one breach does not waive:

* another breach;
* a future breach;
* another person;
* another program;
* another version;
* another right; or
* another remedy.

---

# 37. ASSIGNMENT

You may not:

* assign;
* transfer;
* delegate;
* sublicense;
* novate; or
* otherwise dispose of

any right or obligation under this License without prior written permission.

Any unauthorized attempted assignment is void to the extent permitted by law.

The Licensor may assign or transfer rights to:

* a successor;
* an affiliated entity;
* an acquirer;
* a purchaser of assets;
* an intellectual property holding entity;
* an estate;
* a legal representative; or
* another lawful rights holder.

---

# 38. NO PARTNERSHIP OR AGENCY

This License does not create:

* a partnership;
* a joint venture;
* employment;
* agency;
* a franchise;
* a fiduciary relationship;
* sponsorship;
* endorsement; or
* authority for You to bind the Licensor.

---

# 39. FORCE MAJEURE

The Licensor is not responsible for delay, interruption, unavailability, loss, or failure caused by circumstances beyond reasonable control, including:

* natural disasters;
* war;
* civil unrest;
* government action;
* sanctions;
* internet failure;
* hosting failure;
* power failure;
* supply-chain failure;
* cyberattack;
* third-party service failure;
* labor disputes;
* epidemics;
* pandemics; or
* changes in law.

---

# 40. ENTIRE AGREEMENT

This License, together with:

* applicable Third-Party Material licenses;
* applicable additional product terms;
* applicable Core and `.alek` Application compatibility notices;
* applicable Hosting Platform terms;
* applicable mandatory law; and
* any separately signed written agreement

constitutes the complete agreement concerning the rights granted under this License.

A README, issue response, social media post, email discussion, advertisement, release note, website statement, oral statement, or informal message does not modify this License unless it expressly grants rights and is issued or confirmed in writing by the Licensor.

---

# 41. INTERPRETATION

## 41.1 Headings

Headings are for convenience and do not limit meaning.

## 41.2 Including

“Including” means “including without limitation.”

## 41.3 Singular and Plural

The singular includes the plural and the plural includes the singular where context permits.

## 41.4 Maximum Lawful Effect

This License shall be interpreted to give maximum lawful effect to:

* retained ownership;
* limited permissions;
* restrictions on Commercial Use;
* restrictions on Production Use;
* restrictions on Distribution;
* restrictions on Derivative Materials;
* restrictions on AI use;
* protection of branding;
* preservation of the Core–Application Architecture;
* protection of Core and `.alek` Application separation;
* separation of Hosting Platform rights; and
* reservation of all ungranted rights.

## 41.5 Not Open Source

This License must not be interpreted as:

* an open-source license;
* a free-software license;
* a public-domain dedication;
* a permissive license;
* a copyleft license;
* an OSI-approved license; or
* permission to use the Covered Materials for any purpose.

---

# 42. SURVIVAL

The following provisions survive termination:

* ownership;
* reservation of rights;
* Hosting Platform rights;
* restrictions on Distribution;
* restrictions on Derivative Materials;
* AI restrictions;
* branding restrictions;
* contribution rights;
* Third-Party Material obligations;
* termination consequences;
* enforcement;
* warranty disclaimers;
* limitation of liability;
* indemnification;
* governing law;
* jurisdiction;
* language;
* severability;
* no waiver;
* assignment;
* entire agreement;
* interpretation;
* fictional-universe, lore, and creative-material restrictions;
* Core and `.alek` Application ownership and separation;
* compatibility and package restrictions;
* survival; and
* any provision that by its nature should survive.


---

# 43. RESERVATION OF RIGHTS

All rights not expressly granted are reserved by the Licensor.

No permission may be inferred from:

* public availability;
* source availability;
* repository visibility;
* technical accessibility;
* absence of payment;
* absence of access controls;
* absence of encryption;
* absence of a watermark;
* prior tolerance;
* silence; or
* failure to enforce.

---

# 44. SEPARATE LICENSING

The Licensor may offer separate licenses for:

* commercial use;
* enterprise use;
* professional use;
* organizational use;
* educational use;
* governmental use;
* production use;
* hosted deployment;
* SaaS deployment;
* redistribution;
* modification;
* derivative works;
* source-code access;
* branding;
* white-label use;
* integration;
* Core embedding;
* `.alek` Application creation or distribution;
* `.alek` loader, runtime, interpreter, converter, or compatibility-layer development;
* package-format implementation;
* API use;
* AI use;
* dataset use;
* research;
* partnership;
* support;
* maintenance; or
* other permissions.

Availability, price, conditions, duration, and scope are determined solely by the Licensor.

No permission exists until express written authorization is issued by the Licensor.

---

# 45. CONTACT

Requests concerning licensing, permissions, commercial use, distribution, Core integration, `.alek` Application distribution, package-format implementation, compatibility, contributions, legal notices, or other matters may be sent to:

**[thedevorger.alekrythae.dev@gmail.com](mailto:thedevorger.alekrythae.dev@gmail.com)**

Sending a request does not grant permission.

Silence, non-response, negotiation, a draft agreement, or an informal discussion does not grant permission.

---

## END OF LICENSE

**TheDEvorger UNIVERSAL PROPRIETARY SOFTWARE LICENSE**
**Version 1.3**

**SPDX-License-Identifier:**
`LicenseRef-TheDEvorger-UPSL-1.3`

Copyright © 2026–present TheDEvorger.
All Rights Reserved.
