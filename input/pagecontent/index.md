# Lithuanian Base Implementation Guide

## Introduction and Purpose

The **Lithuanian Base Implementation Guide (LT Base IG)** establishes the **national foundation** for using the **Fast Healthcare Interoperability Resources (FHIR)** standard within the Lithuanian digital health ecosystem.

Its primary purpose is to **simplify the adoption and implementation of FHIR** by providing a **standardized, reusable, and consensus-based framework** for national use. By doing so, this guide supports **consistent representation of clinical and administrative data**, improves **interoperability** and **data quality**, and contributes to the transition towards **more granular and scalable digital health data exchange** in Lithuania.

This guide is adapted to the **specific needs, structure, and regulatory context of the Lithuanian healthcare system**.

## Audience

This guide is intended for **implementation guide authors, system vendors, integrators, architects, and other stakeholders** involved in designing, implementing, or maintaining **FHIR-based data exchange**. Readers are expected to have at least a **basic familiarity with FHIR** and to refer to the **core FHIR specification** where additional background is needed.

**Implementation, testing, and feedback** on this guide are encouraged as part of its continued development.

## Scope and Key Content

This guide provides **foundational artifacts and implementation principles** intended for reuse across **Lithuanian digital health implementations**, including:

- **Base Profiles:** Loosely constrained national baseline profiles on core FHIR resources such as **Patient, Practitioner, Organization, Location, Observation**, and related resources.
- **Identifiers and Naming Systems:** Nationally relevant identifiers and naming systems used for **consistent identification** of patients, practitioners, organizations, and other entities.
- **Terminology Resources:** **CodeSystems and ValueSets** required to support Lithuanian healthcare data exchange, including **local terminology assets** and **reusable national terminology components**.
- **Implementation Principles:** Policy guidance and modelling principles for **profile development, extension use, naming conventions, publishing, and national interoperability alignment**.

The **LT Base profiles** follow an **open-world modelling approach**. To keep them **flexible and reusable** across different use cases, most **cardinalities, bindings, and conformance expectations** are kept close to the **core FHIR specification**. These profiles are intended to serve as a **foundation for more specific derived implementation guides and solutions**, rather than as **fully specified deployable solutions** on their own.

## Why Use This Guide?

By adopting these profiles and guidance, implementers can support a standardized approach to:

- **Interoperability:** Establish a **common national baseline** for consistent data exchange across **healthcare providers, registries, digital platforms**, and future Lithuanian implementation guides.
- **Data Quality:** Promote **consistent modelling practices**, **reusable identifiers**, **stable terminology resources**, and **predictable profile design** across implementations.
- **Clinical Utility:** Enable the development of **reliable, scalable, and use-case-specific solutions** by providing a **stable national foundation** for representing administrative and clinical information.

## How to Navigate This Guide

This guide is organized into several sections that support implementation from overview to detailed conformance artifacts. All conformance resources are listed on the [**Artifacts**](artifacts.html) page. Key sections include:

- [**Artifacts**](artifacts.html) — Complete list of **profiles, terminology resources, extensions, and other conformance assets** defined by this guide.
- [**Policy**](policy.html) — National implementation principles, naming conventions, identifier guidance, and publishing expectations.
- [**Changes**](changes.html) — Summary of changes introduced across guide versions.

## IP Statements
<!-- { // not yet supported by i18n in IG publisher: % include ip-statements.xhtml %} -->

### Contributors

| Name | Role | Organization |
|------|------|--------------|
| [Igor Bossenko](https://about.askigor.eu) | Author | [HELEX Solutions](https://helex.solutions) |