/* The code performs multiple operations in a single transaction on Firestore. 
The operations include reading from two documents (user and post), updating two
fields in the documents (user points and post likes count), and writing a new comment.
If any of these operations fails, the entire transaction will be rolled back,
ensuring that the data remains consistent.

The transaction returns a boolean value of true if all operations were successful,
or false if any of the operations failed. The success of the transaction can be checked by
catching any errors that might occur during the transaction with the catchError function. */

bool success = await Firestore.instance.runTransaction((Transaction tx) async {
  // Read user document
  DocumentSnapshot userSnapshot = await tx.get(userRef);

  // Read post document
  DocumentSnapshot postSnapshot = await tx.get(postRef);

  if (userSnapshot.exists && postSnapshot.exists) {
    // Update user points
    int newUserPoints = userSnapshot.data['points'] + 10;
    await tx.update(userRef, <String, dynamic>{'points': newUserPoints});

    // Update post likes count
    int newPostLikes = postSnapshot.data['likesCount'] + 1;
    await tx.update(postRef, <String, dynamic>{'likesCount': newPostLikes});
  }

  // Write new comment
  await tx.set(commentsRef.document(), <String, dynamic>{'text': 'Nice post!'});

  return true;
}).catchError((error) {
  print(error);
  return false;
});

if (success) {
  print('Transaction succeeded');
} else {
  print('Transaction failed');
}

