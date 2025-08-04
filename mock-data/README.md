# Mock Data Directory

This directory contains mock user profiles for demo purposes.

## Structure:
- `profiles/` - Contains user profile images (add .jpg, .png files here)
- `users.json` - Contains user profile data

## Adding Mock Users:
1. Add profile images to the `profiles/` folder
2. Update `users.json` with user information
3. Run `add-mock-users.js` to import into database

## Example users.json format:
```json
[
  {
    "username": "alice_dev",
    "display_name": "Alice Johnson",
    "bio": "Full-stack developer passionate about Web3",
    "avatar_filename": "alice.jpg",
    "skills": ["React", "Solidity", "Node.js"],
    "looking_for": ["Co-founder", "Designer", "Investor"],
    "experience_level": "Senior",
    "location": "San Francisco, CA"
  }
]
```