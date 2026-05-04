import 'package:flutter/material.dart';

/// Resume editor page with preview and AI chat
class EditorPage extends StatefulWidget {
  final String resumeId;

  const EditorPage({super.key, required this.resumeId});

  @override
  State<EditorPage> createState() => _EditorPageState();
}

class _EditorPageState extends State<EditorPage> {
  bool _showAIChat = false;
  bool _showPreview = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Software Engineer Resume'),
        actions: [
          // Save Status
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Center(
              child: Text(
                'All changes saved',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ),

          // Preview Toggle
          IconButton(
            icon: Icon(_showPreview ? Icons.preview : Icons.preview_outlined),
            onPressed: () {
              setState(() => _showPreview = !_showPreview);
            },
            tooltip: 'Toggle Preview',
          ),

          // AI Chat Toggle
          IconButton(
            icon: Icon(
              _showAIChat ? Icons.psychology : Icons.psychology_outlined,
            ),
            onPressed: () {
              setState(() => _showAIChat = !_showAIChat);
            },
            tooltip: 'AI Assistant',
          ),

          // Export Button
          IconButton(
            icon: const Icon(Icons.download_outlined),
            onPressed: _showExportDialog,
            tooltip: 'Export Resume',
          ),

          const SizedBox(width: 8),
        ],
      ),
      body: Row(
        children: [
          // Left Sidebar - Section Navigation
          Container(
            width: 250,
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(color: Theme.of(context).dividerColor),
              ),
            ),
            child: _buildSectionNavigator(),
          ),

          // Center - Editor
          Expanded(flex: _showPreview ? 1 : 2, child: _buildEditor()),

          // Right Panel - Preview or AI Chat
          if (_showPreview || _showAIChat)
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    left: BorderSide(color: Theme.of(context).dividerColor),
                  ),
                ),
                child: _showAIChat ? _buildAIChat() : _buildPreview(),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildSectionNavigator() {
    final sections = [
      ('Header', Icons.person_outline),
      ('Summary', Icons.notes_outlined),
      ('Experience', Icons.work_outline),
      ('Education', Icons.school_outlined),
      ('Skills', Icons.star_outline),
      ('Projects', Icons.code_outlined),
      ('Certifications', Icons.workspace_premium_outlined),
      ('Achievements', Icons.emoji_events_outlined),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Sections', style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(height: 8),
              Text(
                'Organize your resume content',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
        const Divider(height: 1),
        Expanded(
          child: ListView.builder(
            itemCount: sections.length,
            itemBuilder: (context, index) {
              final (title, icon) = sections[index];
              return ListTile(
                leading: Icon(icon, size: 20),
                title: Text(title),
                selected: index == 0,
                onTap: () {
                  // TODO: Navigate to section
                },
              );
            },
          ),
        ),
        const Divider(height: 1),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              OutlinedButton.icon(
                onPressed: () {
                  // TODO: Show job requirement dialog
                },
                icon: const Icon(Icons.paste_outlined),
                label: const Text('Paste Job Requirement'),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildEditor() {
    return Container(
      color: Theme.of(context).colorScheme.surface,
      padding: const EdgeInsets.all(24),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Header', style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: 16),
            const TextField(
              decoration: InputDecoration(labelText: 'Full Name'),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: const InputDecoration(labelText: 'Email'),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: TextField(
                    decoration: const InputDecoration(labelText: 'Phone'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            TextField(decoration: const InputDecoration(labelText: 'Location')),
            const SizedBox(height: 24),

            // More fields would go here...
            Center(
              child: Text(
                'Editor under construction...',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPreview() {
    return Container(
      color: Colors.grey[100],
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              border: Border(
                bottom: BorderSide(color: Theme.of(context).dividerColor),
              ),
            ),
            child: Row(
              children: [
                Text('Preview', style: Theme.of(context).textTheme.titleMedium),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.zoom_in),
                  onPressed: () {},
                  iconSize: 20,
                ),
                IconButton(
                  icon: const Icon(Icons.zoom_out),
                  onPressed: () {},
                  iconSize: 20,
                ),
              ],
            ),
          ),
          Expanded(
            child: Center(
              child: Container(
                margin: const EdgeInsets.all(24),
                padding: const EdgeInsets.all(48),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withAlpha(25),
                      blurRadius: 10,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: const AspectRatio(
                  aspectRatio: 8.5 / 11,
                  child: Center(child: Text('Resume Preview')),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAIChat() {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            border: Border(
              bottom: BorderSide(color: Theme.of(context).dividerColor),
            ),
          ),
          child: Row(
            children: [
              const Icon(Icons.psychology, size: 20),
              const SizedBox(width: 8),
              Text(
                'AI Assistant',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              _buildAIMessage(
                'Hello! I can help you improve your resume. Try asking me to:\n\n• Rewrite your summary\n• Improve bullet points\n• Tailor content to a job description\n• Suggest missing skills',
                isUser: false,
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            border: Border(
              top: BorderSide(color: Theme.of(context).dividerColor),
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: const InputDecoration(
                    hintText: 'Ask AI to improve your resume...',
                    border: OutlineInputBorder(),
                  ),
                  maxLines: null,
                ),
              ),
              const SizedBox(width: 8),
              IconButton(icon: const Icon(Icons.send), onPressed: () {}),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildAIMessage(String text, {required bool isUser}) {
    return Align(
      alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: isUser
              ? Theme.of(context).colorScheme.primary
              : Colors.grey[200],
          borderRadius: BorderRadius.circular(8),
        ),
        constraints: const BoxConstraints(maxWidth: 300),
        child: Text(
          text,
          style: TextStyle(color: isUser ? Colors.white : Colors.black87),
        ),
      ),
    );
  }

  void _showExportDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Export Resume'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.picture_as_pdf),
              title: const Text('Export as PDF'),
              onTap: () {
                Navigator.pop(context);
                // TODO: Export as PDF
              },
            ),
            ListTile(
              leading: const Icon(Icons.description),
              title: const Text('Export as DOCX'),
              onTap: () {
                Navigator.pop(context);
                // TODO: Export as DOCX
              },
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
        ],
      ),
    );
  }
}
