// Write data to Firestore
await Firestore.instance.collection("collection_name").document("document_id").setData({
  "field_1": "value_1",
  "field_2": "value_2"
});

// Read data from Firestore
DocumentSnapshot snapshot = await Firestore.instance.collection("collection_name").document("document_id").get();
if (snapshot.exists) {
  Map<String, dynamic> data = snapshot.data;
  print("field_1: ${data['field_1']}");
  print("field_2: ${data['field_2']}");
}

// Update data in Firestore
await Firestore.instance.collection("collection_name").document("document_id").updateData({
  "field_1": "new_value_1",
  "field_2": "new_value_2"
});

// Delete data in Firestore
await Firestore.instance.collection("collection_name").document("document_id").delete();
