import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// Dashboard page showing all resumes
class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final _searchController = TextEditingController();
  String _searchQuery = '';
  String _selectedFilter = 'All';

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Resumes'),
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle_outlined),
            onPressed: () {
              // TODO: Show user menu
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Header Section
          Container(
            padding: const EdgeInsets.all(24),
            color: Theme.of(context).colorScheme.surface,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Resume Workspace',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 8),
                Text(
                  'Manage and tailor your resumes for different opportunities',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 24),

                // Search and Filter Bar
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _searchController,
                        decoration: InputDecoration(
                          hintText: 'Search resumes...',
                          prefixIcon: const Icon(Icons.search),
                          suffixIcon: _searchQuery.isNotEmpty
                              ? IconButton(
                                  icon: const Icon(Icons.clear),
                                  onPressed: () {
                                    _searchController.clear();
                                    setState(() => _searchQuery = '');
                                  },
                                )
                              : null,
                        ),
                        onChanged: (value) {
                          setState(() => _searchQuery = value);
                        },
                      ),
                    ),
                    const SizedBox(width: 16),
                    DropdownButton<String>(
                      value: _selectedFilter,
                      items: ['All', 'Draft', 'Tailored', 'Archived']
                          .map(
                            (filter) => DropdownMenuItem(
                              value: filter,
                              child: Text(filter),
                            ),
                          )
                          .toList(),
                      onChanged: (value) {
                        setState(() => _selectedFilter = value!);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Resume Grid
          Expanded(child: _buildResumeGrid()),
        ],
      ),

      // FAB for creating new resume
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _createNewResume,
        icon: const Icon(Icons.add),
        label: const Text('New Resume'),
      ),
    );
  }

  Widget _buildResumeGrid() {
    // TODO: Load resumes from state management
    // For now, showing empty state
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.description_outlined,
            size: 64,
            color: Theme.of(context).colorScheme.primary.withAlpha(128),
          ),
          const SizedBox(height: 16),
          Text('No resumes yet', style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 8),
          Text(
            'Create your first resume to get started',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 24),
          ElevatedButton.icon(
            onPressed: _createNewResume,
            icon: const Icon(Icons.add),
            label: const Text('Create Resume'),
          ),
        ],
      ),
    );
  }

  void _createNewResume() {
    // TODO: Show create resume dialog
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Create New Resume'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: 'Resume Title',
                hintText: 'e.g., Software Engineer Resume',
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Target Role (Optional)',
                hintText: 'e.g., Senior Frontend Developer',
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              // Navigate to editor with new resume
              context.go('/editor/new');
            },
            child: const Text('Create'),
          ),
        ],
      ),
    );
  }
}
