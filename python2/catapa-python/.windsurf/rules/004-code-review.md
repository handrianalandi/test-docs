# Code Review Standards

Rules for reviewing code, identifying issues, and providing feedback.

## Code Review Guidelines

- Review for code clarity, maintainability, and adherence to project standards
- Check for proper error handling and edge case coverage
- Verify security best practices are followed (especially for OAuth2 and API keys)
- Ensure proper testing coverage for new features
- Review for performance implications and optimization opportunities
- Validate documentation and commenting standards
- Check for proper logging and monitoring implementation
- Verify OpenAPI client regeneration safety (wrapper code should not break on regeneration)

## Review Checklist

- [ ] Code follows established style guidelines (PEP 8)
- [ ] Functions and classes are properly documented
- [ ] Error handling is comprehensive and appropriate
- [ ] Security vulnerabilities are addressed (no hardcoded credentials, proper token handling)
- [ ] Performance considerations are evaluated
- [ ] Tests are included and cover edge cases
- [ ] Dependencies are justified and minimal
- [ ] Code is readable and maintainable
- [ ] Type hints are used correctly
- [ ] File headers include Authors and References sections

## Common Issues to Flag

- Hardcoded values that should be configurable
- Missing input validation
- Inefficient HTTP request patterns
- Memory leaks or resource management issues
- Inconsistent naming conventions
- Overly complex functions that should be refactored
- Missing or inadequate test coverage
- Security vulnerabilities (exposed credentials, improper token storage)
- Breaking changes to wrapper code that would affect regeneration
- Missing error handling for API failures

## Feedback Guidelines

- Provide constructive and specific feedback
- Suggest improvements rather than just pointing out problems
- Reference relevant documentation or standards
- Prioritize critical issues over style preferences
- Be respectful and collaborative in tone
