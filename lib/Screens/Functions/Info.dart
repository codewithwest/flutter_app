import 'package:flutter/material.dart';

header(String description) {
  return Container(
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 30),
      alignment: Alignment.center,
      child: Text(
        description,
        style: TextStyle(
            color: Colors.blue, fontWeight: FontWeight.w500, fontSize: 30),
      ));
}

firstName(firstNameController) {
  return Container(
    padding: const EdgeInsets.all(10),
    child: TextField(
      controller: firstNameController,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'FirstName',
      ),
    ),
  );
}

lastName(lastNameController) {
  return Container(
    padding: const EdgeInsets.all(10),
    child: TextField(
      controller: lastNameController,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'LastName',
      ),
    ),
  );
}

email(emailController) {
  return Container(
    padding: const EdgeInsets.all(10),
    child: TextField(
      controller: emailController,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Email',
      ),
    ),
  );
}

password(passwordController) {
  return Container(
    padding: const EdgeInsets.all(10),
    child: TextField(
      controller: passwordController,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Password',
      ),
    ),
  );
}

confirmPassword(passwordController) {
  return Container(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: TextField(
        textAlign: TextAlign.center,
        obscureText: true,
        controller: passwordController,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Confirm Password',
        ),
      ));
}

//moveToScreen(BuildContext context) {
 // Navigator.popAndPushNamed(context, '_DashBoardState');
//}
