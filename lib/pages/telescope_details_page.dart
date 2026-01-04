import 'package:a2zecom/models/image_model.dart';
import 'package:a2zecom/models/telescope.dart';
import 'package:a2zecom/providers/telescope_provider.dart';
import 'package:a2zecom/utils/constants.dart';
import 'package:a2zecom/utils/helper_functions.dart';
import 'package:a2zecom/utils/widget_functions.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

import '../customwidgets/image_holder_view.dart';

class TelescopeDetailsPage extends StatefulWidget {
  static const String routeName = 'telescopedetails';
  final String id;

  const TelescopeDetailsPage({super.key, required this.id});

  @override
  State<TelescopeDetailsPage> createState() => _TelescopeDetailsPageState();
}

class _TelescopeDetailsPageState extends State<TelescopeDetailsPage> {
  late Telescope telescope;
  late TelescopeProvider provider;

  @override
  void didChangeDependencies() {
    provider = Provider.of<TelescopeProvider>(context);
    telescope = provider.findTelescopeById(widget.id);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          telescope.model,
          style: const TextStyle(overflow: TextOverflow.ellipsis),
        ),
      ),
      body: ListView(
        children: [
          CachedNetworkImage(
            width: double.infinity,
            height: 200,
            imageUrl: telescope.thumbnail.downloadUrl,
            placeholder: (context, url) =>
            const Center(child: CircularProgressIndicator()),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
          SizedBox(
            width: MediaQuery
                .of(context)
                .size
                .width,
            height: 100,

            child: Card(
              child: ListView(
                padding: const EdgeInsets.all(8.0),
                scrollDirection: Axis.horizontal,
                children: [
                  FloatingActionButton.small(
                    onPressed: () {
                      getImage(ImageSource.gallery);
                    },
                    tooltip: 'Add Additional Image',
                    child: const Icon(Icons.add),
                  ),
                  if (telescope.additionalImage.isEmpty)
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Center(
                        child: Text(
                          'Add other images',
                          style: Theme
                              .of(
                            context,
                          )
                              .textTheme
                              .titleLarge
                              ?.copyWith(color: Colors.grey),
                        ),
                      ),
                    ),
                  ...telescope.additionalImage.map(
                        (e) =>
                        ImageHolderView(
                          imageModel: e,
                          onImagePressed: () {
                            _showImageOnDialog(e);
                          },
                        ),
                  ),
                ],
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              telescope.description == null
                  ? 'Add Description'
                  : 'Show Description',
            ),
          ),
          ListTile(
            title: Text(telescope.brand.name),
            subtitle: Text(telescope.model),
          ),
          ListTile(
            title: Text(
              'Sale Price (with discount) : $currencySymbol${priceAfterDiscount(
                  telescope.price, telescope.discount).toStringAsFixed(0)}',
            ),
            subtitle: Text(
              'Original Price : $currencySymbol${telescope.price}',
            ),
            trailing: IconButton(
              onPressed: () {
                showSingleTextInputDialog(
                  context: context,
                  title: 'Edit Price',
                  onSubmit: (value) {
                    EasyLoading.show(status: 'Please Wait');
                  },
                );
              },
              icon: const Icon(Icons.edit),
            ),
          ),
          ListTile(
            title: Text('Discount : ${telescope.discount}'),
            trailing: IconButton(
              onPressed: () {
                showSingleTextInputDialog(
                  context: context,
                  title: 'Edit Discount',
                  onSubmit: (value) {
                    EasyLoading.show(status: 'Please Wait');
                  },
                );
              },
              icon: const Icon(Icons.edit),
            ),
          ),
          ListTile(
            title: Text('Stock : ${telescope.stock}'),
            trailing: IconButton(
              onPressed: () {
                showSingleTextInputDialog(
                  context: context,
                  title: 'Edit Stock',
                  onSubmit: (value) {
                    EasyLoading.show(status: 'Please Wait');
                  },
                );
              },
              icon: const Icon(Icons.edit),
            ),
          ),
        ],
      ),
    );
  }

  void getImage(ImageSource source) async {
    final file = await ImagePicker().pickImage(
      source: source,
      imageQuality: 50,
    );
    if (file != null) {
      EasyLoading.show(status: 'Please Wait');
      final newImage = await provider.uploadImage(file.path);
      telescope.additionalImage.add(newImage);
      provider
          .updateTelescopeField(
        telescope.id!,
        'additionalImage',
        toImageMapList(telescope.additionalImage),
      )
          .then((value) {
        EasyLoading.dismiss();
        showMsg(context, 'Added');
        setState(() {});
      })
          .catchError((error) {
        EasyLoading.dismiss();
        showMsg(context, 'Failed to add');
      });
    }
  }

  void _showImageOnDialog(ImageModel e) {
    showDialog(context: context, builder: (context) =>
        AlertDialog(
          content: CachedNetworkImage(imageUrl: e.downloadUrl,
            fit: BoxFit.contain,
            height: MediaQuery
                .of(context)
                .size
                .height / 2,
            placeholder: (context, url) =>
            const Center(
              child: CircularProgressIndicator(),
            ),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
          actions: [
            IconButton(onPressed: () {
              Navigator.pop(context);
            }, icon: const Icon(Icons.close)),
            IconButton(onPressed: () async {
              Navigator.pop(context);
              EasyLoading.show(status: 'Please Wait');
              try {
                await provider.deleteImage(telescope.id!, e);
                telescope.additionalImage.remove(e);
                await provider.updateTelescopeField(
                    telescope.id!, 'additionalImage',
                    toImageMapList(telescope.additionalImage));
                EasyLoading.dismiss();
                setState(() {

                });

              } catch (error) {
                EasyLoading.dismiss();
              }
            }, icon: const Icon(Icons.delete))
          ],
        ));
  }
}
