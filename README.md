# Finding-the-Longest-Increasing-Sequence
This IDL script finds the most extended increasing sequence of values within a specified range [x1, x2] from an input array. The function ensures that values in the sequence are strictly increasing and returns the indices and corresponding values of the most extended sequence found.
# Feautures
- Filters values within the range x1 to x2.
- Identifies the longest increasing subsequence.
- Stores both the indices and the values of the sequence.
- Works efficiently with dynamic arrays in IDL
# Usage
1. Load the Procedure
To use the function, load the script in your IDL environment:

.r find_longest_increasing_sequence.pro

3. Call the function
Pass your input array to the function to extract the longest increasing sequence:
find_longest_increasing_sequence, array, longest_seq_indices, longest_seq_array

print, longest_seq_indices

print, longest_seq_array

# Input
- array: A numeric array containing values
# Output
- longest_seq_indices: Array of indices corresponding to the longest increasing sequence.
- longest_seq_array: Array of values forming the longest increasing sequence.

# Notes
- The function resets the sequence if an invalid or non-increasing value appears.
- It performs a final check to ensure the last sequence is considered.

# License
This script is open-source and free to use for research and academic purposes.

# Author
Eduardo Tirado-Bueno, 
Instituto Nacional de Astrofísica Óptica y Electrónica,
Last Update: January 2025

For inquiries, feel free to reach out (etirado@inaoe.mx)
