import 'package:a2zecom/pages/telescope_details_page.dart';
import 'package:a2zecom/providers/telescope_provider.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class ViewTelescopePage extends StatefulWidget {
  static const String routeName = 'viewtelescope';

  const ViewTelescopePage({super.key});

  @override
  State<ViewTelescopePage> createState() => _ViewTelescopePageState();
}

class _ViewTelescopePageState extends State<ViewTelescopePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Telescopes')),
      body: Consumer<TelescopeProvider>(
        builder: (context, provider, child) => ListView.builder(
          itemCount: provider.telescopeList.length,
          itemBuilder: (context, index) {
            final telescope = provider.telescopeList[index];
            return InkWell(
              onTap: () {
                context.goNamed(TelescopeDetailsPage.routeName, extra: telescope.id);
              },
              child: Card(
                elevation: 0,
                color: Colors.transparent,
                child: Row(
                  children: [
                    CachedNetworkImage(
                      width: double.infinity,
                      height: 100,
                      fit: BoxFit.cover,
                      imageUrl: telescope.thumbnail.downloadUrl,
                      placeholder: (context, url) =>
                          const Center(child: CircularProgressIndicator()),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              telescope.brand.name,
                              style: const TextStyle(fontSize: 16),
                            ),
                            Text(
                              telescope.model,
                              style: const TextStyle(
                                color: Colors.grey,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
